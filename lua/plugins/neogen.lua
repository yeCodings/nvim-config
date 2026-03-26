-- lua/plugins/neogen.lua
return {
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {
      snippet_engine = "luasnip",
      languages = {
        javascript = {
          template = {
            annotation_convention = "jsdoc",
          },
        },
        typescript = {
          template = {
            annotation_convention = "jsdoc",
          },
        },
        javascriptreact = {
          template = {
            annotation_convention = "jsdoc",
          },
        },
        typescriptreact = {
          template = {
            annotation_convention = "jsdoc",
          },
        },
      },
    },
    keys = {
      {
        "<leader>cf",
        function()
          require("neogen").generate({ type = "func" })
        end,
        desc = "JSDoc Function",
      },
      {
        "<leader>cc",
        function()
          require("neogen").generate({ type = "class" })
        end,
        desc = "JSDoc Class",
      },
      {
        "<leader>ct",
        function()
          require("neogen").generate({ type = "type" })
        end,
        desc = "JSDoc Type",
      },
      {
        "<leader>cF",
        function()
          require("neogen").generate({ type = "file" })
        end,
        desc = "JSDoc File",
      },
    },
  },
}
