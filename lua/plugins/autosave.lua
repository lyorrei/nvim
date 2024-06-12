-- lua
return {
  "0x00-ketsu/autosave.nvim",
  -- lazy-loading on events
  event = { "BufLeave" },
  config = function()
    require("autosave").setup({
      events = { "BufLeave" },
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })
  end,
}
