return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    -- dashboard.section.header.val = {
    --   [[                                                    ]],
    --   [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
    --   [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
    --   [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
    --   [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
    --   [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
    --   [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
    --   [[                                                    ]],
    -- }

    dashboard.section.header.val = {
      [[                                                                    ]],
      [[                                                                    ]],
      [[   ██     ██ ███    ██ ███████  ██████  ██    ██ ██ ███    ███ ██   ]],
      [[  ██     ██  ████   ██ ██      ██    ██ ██    ██ ██ ████  ████  ██  ]],
      [[ ██     ██   ██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██   ██ ]],
      [[  ██   ██    ██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██  ██  ]],
      [[   ██ ██     ██   ████ ███████  ██████    ████   ██ ██      ██ ██   ]],
      [[                                                                    ]],
      [[                                                                    ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button('n', '   New file', ':ene <BAR> startinsert <BAR> set showtabline=2<CR>'),
      dashboard.button('r', '   Recent', ':set showtabline=2 <BAR> Telescope oldfiles<CR>'),
      dashboard.button('f', '󰮗   Find file', ':set showtabline=2 <BAR>cd $HOME | Telescope find_files<CR>'),
      dashboard.button('e', '   File Explorer', ':set showtabline=2 <BAR> cd $HOME | Neotree<CR>'),
      dashboard.button('R', '󱘞   Ripgrep', ':set showtabline=2 <BAR> Telescope live_grep<CR>'),
      dashboard.button('q', '󰗼   Quit', ':qa<CR>'),
    }

    alpha.setup(dashboard.opts)
  end,
}
