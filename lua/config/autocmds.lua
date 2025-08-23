-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- WSL剪贴板集成：将复制内容同步到Windows系统剪贴板
if vim.fn.has('wsl') then
  vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("WSLClipboard", { clear = true }),
    callback = function()
      -- 获取刚复制的内容
      local content = vim.fn.getreg('"')
      -- 调用Windows剪贴板程序
      vim.fn.system('/mnt/c/windows/system32/clip.exe', content)
    end,
  })
end
