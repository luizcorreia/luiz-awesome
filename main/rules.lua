-- Standard awesome library
local awful     = require("awful")
-- Theme handling library
local beautiful = require("beautiful")

local _M = {}

-- reading
-- https://awesomewm.org/apidoc/libraries/awful.rules.html

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get(clientkeys, clientbuttons, tags)
  local rules = {

    -- All clients will match this rule.
    { rule = { },
      properties = {
        border_width = beautiful.border_width,
        border_color = beautiful.border_normal,
        focus     = awful.client.focus.filter,
        raise     = true,
        keys      = clientkeys,
        buttons   = clientbuttons,
        screen    = awful.screen.preferred,
        placement = awful.placement.no_overlap+awful.placement.no_offscreen
      }
    },

    -- Floating clients.
    { rule_any = {
        instance = {
          "DTA",  -- Firefox addon DownThemAll.
          "copyq",  -- Includes session name in class.
          "pinentry",
        },
        class = {
          "Arandr",
          "Blueman-manager",
          "Blueberry",
          "Skype",
          "Gpick",
          "Kruler",
          "MessageWin",  -- kalarm.
          "Sxiv",
          "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
          "Wpa_gui",
          "veromix",
          "pinentry",
          "xtightvncviewer"},

        -- Note that the name property shown in xprop might be set slightly after creation of the client
        -- and the name shown there might not match defined rules here.
        name = {
          "Event Tester",  -- xev.
        },
        role = {
          "AlarmWindow",  -- Thunderbird's calendar.
          "ConfigManager",  -- Thunderbird's about:config.
          "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
          "Preferences",
          "setup",
        }
      },
      properties = {
        floating = true
      }
    },

    -- Add titlebars to normal clients and dialogs
    { rule_any = {
        type = { "normal", "dialog" }
      },
      properties = {
        titlebars_enabled = false
      }
    },

    -- Set Firefox to always map on the tag named "2" on screen 1.
    { rule = { class = "Firefox" },
       properties = {  tag = RC.tags[1], switchtotag = true, } },
    { rule = { class = "csgo_linux64" },
       properties = { screen = 1, tag = RC.tags[9], switchtotag = true, } },
    { rule = { class = "discord" },
       properties = { screen = 1, tag = RC.tags[3], switchtotag = true, } },
    { rule = { class = "Slack" },
       properties = { screen = 1, tag = RC.tags[3], switchtotag = true, } },
    { rule = { class = "Thunderbird" },
       properties = { screen = 1, tag = RC.tags[4], switchtotag = true, } },
    { rule = { class = "MPV" },
       properties = { screen = 2, tag = RC.tags[7], switchtotag = true, } },
  }

  return rules
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable(
  {},
  { __call = function(_, ...) return _M.get(...) end }
)
