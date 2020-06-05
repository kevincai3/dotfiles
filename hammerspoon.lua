-- Autoreload config file
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

-- Show grid
local grid = hs.grid

grid.setGrid('4x4')
--[[
grid.HINTS={
    {'Q', 'W', 'E', 'R', 'T', 'Y'},
    {'A', 'S', 'D', 'F', 'G', 'H'},
    {'Z', 'X', 'C', 'V', 'B', 'N'}
}
grid.ui.showExtraKeys = false
]]--
hs.hotkey.bind({'cmd', 'alt'}, 'g', grid.show)

-- Multi-window layouts


-- Simple window resizing
-- side :: enum ["left", "right"];
function pushToSide(side)
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    if side == "left" then
        f.x = max.x
        f.y = max.y
        f.w = max.w / 2
        f.h = max.h
    elseif side == "right" then
        f.x = max.x + (max.w / 2)
        f.y = max.y
        f.w = max.w / 2
        f.h = max.h
    end
    win:setFrame(f)
end

hs.hotkey.bind({"cmd", "ctrl"}, "Left", function()
    pushToSide("left")
  end
)

hs.hotkey.bind({"cmd", "ctrl"}, "Right", function()
    pushToSide("right")
  end
)