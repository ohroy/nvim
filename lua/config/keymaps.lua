-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

if vim.g.vscode then
  local vscode = require("vscode-neovim")
  -- vim.g.clipboard = vim.g.vscode_clipboard
  vim.g.clipboard = vim.g.vscode_clipboard
  vim.keymap.set("n", "<leader>f", function()
    vscode.action("editor.action.formatDocument")
  end)
  vim.keymap.set("n", "<leader>w", function()
    vscode.action("workbench.action.files.save")
  end)
  vim.keymap.set("n", "<leader>p", function()
    vscode.action("workbench.action.showCommands")
  end)
  vim.keymap.set("n", "<leader>o", function()
    vscode.action("workbench.action.quickOpen")
  end)
else
  map({ "n" }, "<leader>w", "<cmd>w<cr><esc>", { desc = "Save File" })
  -- formatting
  -- map({ "n", "v" }, "<leader>f", function()
  --   LazyVim.format({ force = true })
  -- end, { desc = "Format" })
end
