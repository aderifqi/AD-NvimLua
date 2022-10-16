-- OR setup with some options
require("nvim-tree").setup {
  sync_root_with_cwd = true,
  reload_on_bufenter = true,
  respect_buf_cwd = true,
  actions = {
    use_system_clipboard = true,
    change_dir = {enable = true, global = true, restrict_above_cwd = false},
    expand_all = {max_folder_discovery = 300, exclude = {}},
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = {"notify", "packer", "qf", "diff", "fugitive", "fugitiveblame"},
          buftype = {"nofile", "terminal", "help"}
        }
      }
    },
    remove_file = {close_window = true}
  }
}
