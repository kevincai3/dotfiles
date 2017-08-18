#!/usr/bin/env python
"""Edit a file in the host nvim instance."""
import os
import sys
import re

from neovim import attach

args = sys.argv

if not args or len(args) <= 1:
    print("Usage: {} <filename> ...".format(sys.argv[0]))
    sys.exit(1)

# Need to escape spaces
args = [os.path.abspath(f).replace(' ', '\ ') for f in args[1:]]

addr = os.environ.get("NVIM_LISTEN_ADDRESS", None)
if not addr:
    os.execvp('nvim', args)

nvim = attach("socket", path=addr)

# Don't use buffers that match the following.
# Ignore Patterns:
# "^\ *$", "^term", "^/usr/local/Cellar/.*/doc/.*.txt$"
def match_pattern(name):
    regex = re.compile('^(term://.*|/usr/local/Cellar/.*/doc/.*\.txt)$')
    return name.strip() == "" or regex.match(name) != None

def find_free_window(cur_window, windows):
    cur_num = cur_window.number
    for window in windows:
        if window.number == cur_num or match_pattern(window.buffer.name):
            continue
        else:
            return window
    return None

def _setup():
    chid = nvim.channel_id
    nvim.command('augroup EDIT')
    nvim.command('au BufEnter <buffer> call rpcnotify({0}, "n")'.format(chid))
    nvim.command('augroup END')

    windows = nvim.windows

    if (len(windows) < 3):
        nvim.command(f'vs {args[0]}')
    else:
        target = find_free_window(nvim.current.window, nvim.windows)
        if target:
            nvim.current.window = target
            nvim.command(f'drop {args[0]}')
        else:
            nvim.command(f'vs {args[0]}')

def _exit(*args):
    nvim.command('augroup EDIT')
    nvim.command('au!')
    nvim.command('augroup END')
    nvim.stop_loop()

nvim.run_loop(_exit, _exit, _setup)
