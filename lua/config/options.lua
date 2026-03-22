local opt = vim.opt
opt.clipboard = "unnamedplus"
opt.autoread = true

opt.nu = true                 -- set line numbers
opt.relativenumber = true     -- use relative line numbers

-- set tab size to 2 spaces
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

-- Enable the display of invisible characters
opt.list = true

-- Define the exact symbols for each type of whitespace
opt.listchars = {
  tab = "▸ ",       -- Shows a right-pointing triangle for tabs
  space = "·",      -- Shows a faint middle dot for standard spaces
  trail = "•",      -- Shows a heavier bullet for trailing spaces
  nbsp = "⦸",       -- Marks non-breaking spaces (often accidentally typed on macOS)
  extends = "❯",    -- Indicates the line continues off the right side of the screen
  precedes = "❮",   -- Indicates the line continues off the left side of the screen
}
