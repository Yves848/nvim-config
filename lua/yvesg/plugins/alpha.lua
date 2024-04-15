return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function ()
    local alpha=require("alpha")
    local dashboard=require("alpha.themes.dashboard")
    -- Set header
    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }
    dashboard.section.buttons.val = {
      dashboard.button("e", "📄 > New File","<cmd>ene<CR>"),
      dashboard.button("SPC ee","📁 > Toggle File Explorer","<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff","🔎 > Find File","<cmd>Telescope find_file<CR>"),
      dashboard.button("SPC fs","🔍 > Find Word","<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr","⏰ > Restore Session For Current Directory","<cmd>SessionRestore<CR>"),
      dashboard.button("q","❌ > Quit NVIM","<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
