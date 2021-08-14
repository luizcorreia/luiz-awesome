-- {{{ Global Variable Definitions
-- moved here in module as local variable
-- }}}

local home = os.getenv("HOME")

local _M = {
  -- This is used later as the default terminal and editor to run.
  -- terminal = "xterm",
  terminal = "alacritty",

  -- device, used in vicious widget
  wlandev = 'wlan0',
  --wlandev = 'wlp2s0b1', # void on notebook

  -- Default modkey.
  -- Usually, Mod4 is the key with a logo between Control and Alt.
  -- If you do not like this or do not have such a key,
  -- I suggest you to remap Mod4 to another key using xmodmap or other tools.
  -- However, you can use another modifier like Mod1, but it may interact with others.
  modkey = "Mod4",
  altkey = "Mod1",
  modkey1 = "Control",

-- personal variables
  browser = "firefox",
  editor = os.getenv("EDITOR") or "vi",
  editorgui = "gedit",
  filemanager = "nautilus", -- "pcmanfm",
  mailclient = "thunderbird",
  mediaplayer = "vlc",
  lock = "i3lock",
  virtualmachine = "virtualbox",
  rofi = rofi_command,
  screenshot = 'flameshot screen -p ~/Pictures',
  region_screenshot = 'flameshot gui -p ~/Pictures',
  delayed_screenshot = 'flameshot screen -p ~/Pictures -d 5000',
}

return _M

