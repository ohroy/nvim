return {
  -- add gn
  -- for rtp support: https://github.com/folke/lazy.nvim/issues/183
  {
    url = "https://gn.googlesource.com/gn",
    ft = { "gn", "gni" },
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/misc/vim")
      require("lazy.core.loader").packadd(plugin.dir .. "/misc/vim")
    end,
    init = function(plugin)
      require("lazy.core.loader").ftdetect(plugin.dir .. "/misc/vim")
    end,
  },
}
