return {
  "nosduco/remote-sshfs.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    require("remote-sshfs").setup({})
    require("telescope").load_extension("remote-sshfs")

    -- Define keymaps for easy access
    local api = require("remote-sshfs.api")
    vim.keymap.set("n", "<leader>rc", api.connect, { desc = "Remote SSH: Connect" })
    vim.keymap.set("n", "<leader>rd", api.disconnect, { desc = "Remote SSH: Disconnect" })
    vim.keymap.set("n", "<leader>rf", api.find_files, { desc = "Remote SSH: Find Files" })
    vim.keymap.set("n", "<leader>rg", api.live_grep, { desc = "Remote SSH: Live Grep" })
  end,
}
