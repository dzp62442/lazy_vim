-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Keep English spell-checking, but don't mark CJK chars as misspelled.
vim.opt.spelllang = { "en", "cjk" }

-- WSL clipboard integration (copy + paste with Windows clipboard)
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "/mnt/c/Windows/System32/clip.exe",
      ["*"] = "/mnt/c/Windows/System32/clip.exe",
    },
    paste = {
      ["+"] = 'powershell.exe -NoProfile -Command "Get-Clipboard"',
      ["*"] = 'powershell.exe -NoProfile -Command "Get-Clipboard"',
    },
    cache_enabled = 0,
  }
end
