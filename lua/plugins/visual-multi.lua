return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_mouse_mappings = 1
      vim.g.VM_default_mappings = 0
      vim.g.VM_maps = {
        ["Select Cursor Down"] = "<C-M-Down>",
        ["Select Cursor Up"] = "<C-M-Up>",
        ["Mouse Cursor"] = "<M-LeftMouse>",
      }
    end,
  },
}
