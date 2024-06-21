-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- Perusing code faster with K and J
-- vim.keymap.set({ "n", "v" }, "K", "5k", { noremap = true, desc = "Up faster" })
-- vim.keymap.set({ "n", "v" }, "J", "5j", { noremap = true, desc = "Down faster" })

-- Remap K and J
-- vim.keymap.set({ "n", "v" }, "<leader>k", "K", { noremap = true, desc = "Keyword" })
-- vim.keymap.set({ "n", "v" }, "<leader>j", "J", { noremap = true, desc = "Join lines" })

vim.keymap.set({ "n", "v" }, "H", "^", { noremap = true, silent = true, desc = "Beginning of line" })
vim.keymap.set({ "n", "v" }, "L", "$", { noremap = true, silent = true, desc = "End of line" })

-- Variável para armazenar o estado das inlay hints
local inlay_hint_enabled = false

-- Função para alternar as inlay hints
local function toggle_inlay_hint()
  if inlay_hint_enabled then
    -- Desabilitar as inlay hints
    vim.lsp.inlay_hint.enable(false)
    inlay_hint_enabled = false
  else
    -- Habilitar as inlay hints
    vim.lsp.inlay_hint.enable(true)
    inlay_hint_enabled = true
  end
end

-- Mapeamento de tecla para alternar as inlay hints
vim.keymap.set("n", "<Leader>ci", toggle_inlay_hint, { noremap = true, silent = true, desc = "Toggle inlay hints" })
