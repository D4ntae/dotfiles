local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")

local weatherfunction = function()
	local weaherwidget = require("awesome-wm-widgets.weather-widget.weather")
    local myweather = wibox.widget {
        {
            {
		weaherwidget({
                    api_key='bd5e378503939ddaee76f12ad7a97608',
                    coordinates = { 45.8150, 15.9819 },
                }),
                left = 5,
                right = 5,
                top = 5,
                bottom = 5,
                widget = wibox.container.margin
            },
            bg = "#1e1e2e",
            shape = gears.shape.rounded_rect,
            widget = wibox.container.background
        },
        widget = wibox.container.constraint
    }
    return myweather
end

return weatherfunction
