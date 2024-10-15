-- Emulates the behavior of the SwitftQuit util.
-- Makes processes quit once the last window is closed.

local function hasOpenWindows(app)
    local windows = app:allWindows()
    return #windows > 0
end

local function closeAppIfNoWindows(appName)
    local app = hs.application.find(appName)
    if app and not hasOpenWindows(app) then
        app:kill()
    end
end

local windowFilter = hs.window.filter.new(nil)
windowFilter:subscribe(hs.window.filter.windowDestroyed, function(window, appName)
    hs.timer.doAfter(0.5, function() closeAppIfNoWindows(appName) end)
end)
