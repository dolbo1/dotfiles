return {
  'nvim-java/nvim-java',

  config = function()
    require('java').setup()
    require('lspconfig').jdtls.setup({
       settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = "JavaSE-23",
                  path = "/usr/bin/java",
                  default = true,
                },
              },
            },
          },
       },
    })

  end
}
