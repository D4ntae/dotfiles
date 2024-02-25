local beautiful = require("beautiful")
local awful = require("awful")

local floating_width = 1200
local floating_height = 675
local screen_geo = awful.screen.focused().geometry

-- All clients will match this rule.
local rules = { 
	{ rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     screen = awful.screen.preferred,
                     placement = awful.placement.no_overlap+awful.placement.no_offscreen
     }
    },
   -- Add titlebars to normal clients and dialogs
    { rule_any = { type="normal" }, 
      properties = { 
        titlebars_enabled = false 
      }
    },
    {
      rule = { class = "Nemo" },
      properties = {
        floating = true,
        x = (screen_geo.width - floating_width) / 2,
        y = (screen_geo.height - floating_height) / 2,
        width = floating_width,
        height = floating_height,
        titlebars_enabled = true,
        resizable = true
      },
    },
    {
      rule = { class = "File-roller" },
      properties = {
        x = (screen_geo.width - 800) / 2,
        y = (screen_geo.height - 400) / 2,
        width = 800,
        height = 600,
        floating = true,
      },
    },
    {
      rule = { name = "Demo" },
      properties = {
        floating = true,
        titlebars_enabled = true,
        resizable = true
      },
    },
    {
      rule = { type = "dialog" },
      properties = {
        floating = true,
        titlebars_enabled = true,
      }
    },


    {
      rule = { name = "System Monitor" },
      properties = {
        floating = true,
        x = (screen_geo.width - floating_width) / 2,
        y = (screen_geo.height - floating_height) / 2,
        width = floating_width,
        height = floating_height,
      },
    },
    {
      rule = { class = "floating-alacritty" },
      properties = {
        floating = true,
        x = (screen_geo.width - 800) / 2,
        y = (screen_geo.height - 400) / 2,
        width = 800,
        height = 400,
      },
    },
      {
        rule = { class = "blueman-manager"},
        properties = {
          x = (screen_geo.width - 800) / 2,
          y = (screen_geo.height - 400) / 2,
          titlebars_enabled = true,
        },
      },
    {
      rule = { name = "Minecraft 1.20.1" },
      properties = {
        floating = true,
        width = 854,
        height = 480,
        titlebars_enabled = true,
        x = (screen_geo.width - 800) / 2,
        y = (screen_geo.height - 600) / 2
      }
    },
    {
      rule = { name = "Enigmatica 9 - Minecraft 1.19" },
      properties = {
        floating = true,
        width = 860,
        height = 490,
        titlebars_enabled = true,
        x = (screen_geo.width - 800) / 2,
        y = (screen_geo.height - 600) / 2
      }
    },

    {
      rule = { class = "Minecraft* 1.16.5" },
      properties = {
        floating = true,
        width = 854,
        height = 480,
        titlebars_enabled = true,
        x = (screen_geo.width - 800) / 2,
        y = (screen_geo.height - 600) / 2
      }
    },
}
    -- Set Firefox to always map on the tag named "2" on screen 1.
    -- { rule = { class = "Firefox" },
    --   properties = { screen = 1, tag = "2" } },
return rules
