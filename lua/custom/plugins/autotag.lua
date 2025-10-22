return {
  {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter',
    opts = {
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      },
      per_filetype = {
        html = { enable_close = false },
      },
    },
  },
}
