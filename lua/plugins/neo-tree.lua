return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      enable_diagnostics = true,
      window = {
        width = 30,
        mappings = {
          ["v"] = "open_vsplit",
          ["s"] = "open_split",
          ["h"] = "close_node",
          ["l"] = "open",
        },
      },
      filesystem = {
        follow_current_file = true,
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = true,
      },
    })
  end,
}
