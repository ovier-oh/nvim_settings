-- Settings runtimepath pfor lazy.nvim 

vim.g.mapleader = " "
vim.g.maplocalleader = " "




vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
    { "preservim/nerdtree" },
    { "ellisonleao/gruvbox.nvim" },
    { "nvim-lualine/lualine.nvim" },
    { "tpope/vim-commentary" },
    { "jiangmiao/auto-pairs" },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,  -- 👈 importante
        priority = 1000,
        config = function()
        local ok, configs = pcall(require, "nvim-treesitter.configs")
            if not ok then
              return
            end

            configs.setup({
              ensure_installed = { "lua", "python", "bash" },
              highlight = { enable = true },
            })
        end,
    },
})


-- ======================== Basic Options =============
vim.opt.number = true 
vim.opt.relativenumber = true 
vim.opt.cursorline = true 
vim.opt.showmatch = true 
vim.opt.incsearch = true 
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true 
vim.opt.autoindent = true 
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.linebreak = true 
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true 

vim.cmd("syntax on") 
vim.cmd("filetype plugin indent on") 


vim.cmd("colorscheme gruvbox")
vim.opt.background = "dark"

local keymap = vim.keymap 



keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>", { silent = true })
keymap.set("n", "<C-s>", ":w<CR>", { silent = true })
keymap.set("n", "<leader>q", ":q<CR>", { silent = true })
keymap.set("n", "<leader>x", ":x<CR>", { silent = true })
keymap.set("i", "jk", "<Esc>", { silent = true })




keymap.set("n","<leader>h", ":nohlsearch<CR>", { silent = true })


