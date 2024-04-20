return {
  "ziontee113/icon-picker.nvim",
  config = function()
    require("icon-picker").setup({ disable_legacy_commands = true })
    local opts = {
      noremap = true,
      silent = true,
    }

    local keymap = vim.keymap

    keymap.set("n", "<leader><leader>i", "<cmd>IconPickerNormal<CR>", opts)
    keymap.set("n", "<leader><leader>y", "<cmd>IconPickerYank<CR>", opts)
    keymap.set("i", "<C-i>", "<cmd>IconPicketInsert<CR>", opts)
  end,
}
