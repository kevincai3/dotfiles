#!/usr/bin/env python
"""Change the host cwd to current directory or passed in"""
import os
import sys
import re

from neovim import attach

args = sys.argv

if args and len(args) > 2:
    print ("Usage: {} [dirname] ..".format(sys.argv[0]))
    sys.exit(1)

path = os.path.abspath(args[1]).replace(' ', '\ ') if len(args) == 2 else os.getcwd().replace(' ', '\ ')

addr = os.environ.get("NVIM_LISTEN_ADDRESS", None)
if not addr:
    print("Host nvim not found")
    sys.exit(1)

nvim = attach("socket", path=addr)
nvim.command("cd {}".format(path))
nvim.command("echo '{}'".format(path))
