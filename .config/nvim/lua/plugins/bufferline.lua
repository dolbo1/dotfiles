return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local bufferline = require('bufferline')
    bufferline.setup({
      options = {
        style_preset = bufferline.style_preset.no_italic,
        mode = 'buffers',
        themable = true,
        numbers = 'none',
        close_command = 'bdelete! %d',
        indicator = {
          -- icon = '| ',
          style = 'none', -- 'icon', 'underline', 'none'
        },
        buffer_close_icon = '✕',
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 30, --prefix is used when a buffer is de-duplicated
        truncate_names = true,
        tab_size = 21,
        diagnostics = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        separator_style = 'thin',
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        auto_toggle_bufferline = false,
        sort_by = 'insert_at_end',
      },
    })
  end,
}
