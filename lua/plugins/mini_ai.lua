return {
  "mini.ai",
  opts = function(_, opts)
    local gen_spec = require("mini.ai").gen_spec
    opts.custom_textobjects = opts.custom_textobjects or {}
    opts.custom_textobjects.m = gen_spec.treesitter({ a = "@message.outer", i = "@message.inner" })
    return opts
  end,
}
