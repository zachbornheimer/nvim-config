-- set leader key to space
vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "lkj", "<ESC>", { desc = "Exit insert mode with lkj" })

-- clear search highlights
keymap.set("n", "<leader><Backspace>", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- use ; or : to run commands
keymap.set("n", ";", ":", { desc = "Use ; instead of :" })

-- save all files
keymap.set("n", "W", ":wa<CR>", { desc = "W to save all open files" })

-- force sudo save
keymap.set("n", "w!!", ":w !sudo tee > /dev/null % <CR>", { desc = "W to save all open files" })

-- window management
keymap.set("n", "<leader>vw", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>hw", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>ew", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>ww", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>%", ":source %<CR>", { desc = "Source the current file" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab


-- shebangs + code shortcuts

vim.cmd("iab hbs #! /bin/sh<CR><BS><CR>");
vim.cmd("iab hbp #! /usr/bin/env perl<CR>use strict;<CR>use warnings;<CR>use feature 'say';<CR><BS><CR>");
vim.cmd("iab hb6 #! /usr/bin/env perl6<CR>use v6;<CR><BS><CR>");
vim.cmd("iab phpse ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);<CR>");
vim.cmd("iab udd use Data::Dumper;<CR>print Dumper");

-- Make <Ctrl-Z> or :stop save all open docs
keymap.set("n", "<C-z>", ":wa<CR>:stop<CR>", { desc = "Save all open docs and stop vim" })
keymap.set("n", "zz", ":wa<CR>:stop<CR>", { desc = "Save all open docs and stop vim" })



-- ToggleAlternates
keymap.set("n", "<leader>!", ":ToggleAlternate<CR>", { desc = "Run the ToggleAlternate plugin"})

-- Useful shortcuts
keymap.set("n", "<leader>x", ":!chmod +x %<CR>", { desc = "Make the current file executable" })

-- Perl
keymap.set("n", 'E', ':!perl -I. %<CR>', { desc = "Run the current perl file" })
