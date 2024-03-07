return {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    keys = {
        vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>",
            { silent = true, desc = "Initialize the plugin" }),
        vim.keymap.set("n", "<leader>me", ":MoltenEvaluateOperator<CR>",
            { silent = true, desc = "run operator selection" }),
        vim.keymap.set("n", "<leader>ml", ":MoltenEvaluateLine<CR>",
            { silent = true, desc = "evaluate line" }),
        vim.keymap.set("n", "<leader>mr", ":MoltenReevaluateCell<CR>",
            { silent = true, desc = "re-evaluate cell" }),
        vim.keymap.set("v", "<leader>mv", ":<C-u>MoltenEvaluateVisual<CR>gv",
            { silent = true, desc = "evaluate visual selection" }),
        vim.keymap.set("n", "<localleader>md", ":MoltenDelete<CR>",
            { silent = true, desc = "molten delete cell" }),
        vim.keymap.set("n", "<localleader>mh", ":MoltenHideOutput<CR>",
            { silent = true, desc = "hide output" }),
        vim.keymap.set("n", "<localleader>mo", ":noautocmd MoltenEnterOutput<CR>",
            { silent = true, desc = "show/enter output" }),
    },
    init = function()
        -- this is an example, not a default. Please see the readme for more configuration options
        vim.g.molten_output_win_max_height = 12
    end,
}
