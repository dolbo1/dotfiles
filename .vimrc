set number
set ai
set ls=2
set tabstop=2
syntax on
packadd! sonokai

" Important!!
        if has('termguicolors')
          set termguicolors
        endif

        " The configuration options should be placed before `colorscheme sonokai`.
        let g:sonokai_style = 'default'
        let g:sonokai_better_performance = 1

        colorscheme sonokai
