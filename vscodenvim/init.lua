--- Options
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.tabstop        = 3
vim.opt.smartindent    = true
vim.opt.mouse          = "a"
vim.opt.ignorecase     = true
vim.opt.smartcase      = true
vim.opt.hlsearch       = false
vim.g.mapleader        = " "
vim.opt.syntax         = "enable"
vim.opt.termguicolors  = true
vim.opt.background     = "dark"
vim.opt.clipboard      = "unnamedplus"

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
callback = function()
vim.highlight.on_yank()
end,
group = highlight_group,
pattern = '*',
})
---vim.cmd("colorscheme tender")

--- Plugins: VimPlug
---local Plug = vim.fn['plug#']
---vim.call("plug#begin")
---Plug("tpope/vim-repeat")
---Plug("sheerun/vim-polyglot")
---Plug("bkad/CamelCaseMotion")
---Plug("junegunn/vim-easy-align")
---Plug("kana/vim-textobj-user")
---Plug("kana/vim-textobj-entire")
---Plug("kana/vim-textobj-line")
---Plug("michaeljsmith/vim-indent-object")
---Plug("vim-scripts/ReplaceWithRegister")
---Plug("wellle/targets.vim")
---vim.call("plug#end")

--- Plugins: Packer
require("packer").startup(function(use)
use "wbthomason/packer.nvim"
use "savq/melange"
use "sainnhe/everforest"
use "sainnhe/edge"
use "sainnhe/gruvbox-material"
use "jacoborus/tender.vim"
use "farmergreg/vim-lastplace"
use "ap/vim-css-color"
---use "tpope/vim-commentary"
use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
}
use {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
        require("hop").setup({ keys = "asdfghjklqwertyuiopzxcvbnm;" })
    end
}
use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
        require("nvim-surround").setup()
    end
})
use {
    "ggandor/leap.nvim",
    config = function() require("leap").set_default_keymaps() end
}
end)

--- Plugins: setup
---local hop = require("hop")
---local directions = require("hop.hint").HintDirection
---
---require('lualine').setup {
---    options = {
---        icons_enabled = true,
---        theme = 'auto',
---        component_separators = { left = '', right = '' },
---        section_separators = { left = '', right = '' },
---        disabled_filetypes = {
---            statusline = {},
---            winbar = {},
---        },
---        ignore_focus = {},
---        always_divide_middle = true,
---        globalstatus = false,
---        refresh = {
---            statusline = 1000,
---            tabline = 1000,
---            winbar = 1000,
---        }
---    },
---    sections = {
---        lualine_a = { 'mode' },
---        lualine_b = { 'branch', 'diff', 'diagnostics' },
---        lualine_c = { 'filename' },
---        lualine_x = { 'encoding', 'fileformat', 'filetype' },
---        lualine_y = { 'progress' },
---        lualine_z = { 'location' }
---    },
---    inactive_sections = {
---        lualine_a = {},
---        lualine_b = {},
---        lualine_c = { 'filename' },
---        lualine_x = { 'location' },
---        lualine_y = {},
---        lualine_z = {}
---    },
---    tabline = {},
---    winbar = {},
---    inactive_winbar = {},
---    extensions = {}
---}

--- Clipboard fix
---vim.g.clipboard = {
---    name = "wslclipboard",
---    copy = {
---        ["+"] = "/mnt/c/Programs/Win32yank/win32yank.exe -i --crlf",
---        ["*"] = "/mnt/c/Programs/Win32yank/win32yank.exe -i --crlf",
---    },
---    paste = {
---        ["+"] = "/mnt/c/Programs/Win32yank/win32yank.exe -o --lf",
---        ["*"] = "/mnt/c/Programs/Win32yank/win32yank.exe -o --lf"
---    },
---    cache_enabled = true
---}

--- Mark fix (I dare you to write this better)
Mark_a = 1
vim.keymap.set("n", "ma", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`a", function() vim.cmd(tostring(Mark_m)) end)
Mark_b = 1
vim.keymap.set("n", "mb", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`b", function() vim.cmd(tostring(Mark_m)) end)
Mark_c = 1
vim.keymap.set("n", "mc", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`c", function() vim.cmd(tostring(Mark_m)) end)
Mark_d = 1
vim.keymap.set("n", "md", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`d", function() vim.cmd(tostring(Mark_m)) end)
Mark_e = 1
vim.keymap.set("n", "me", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`e", function() vim.cmd(tostring(Mark_m)) end)
Mark_f = 1
vim.keymap.set("n", "mf", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`f", function() vim.cmd(tostring(Mark_m)) end)
Mark_g = 1
vim.keymap.set("n", "mg", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`g", function() vim.cmd(tostring(Mark_m)) end)
Mark_h = 1
vim.keymap.set("n", "mh", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`h", function() vim.cmd(tostring(Mark_m)) end)
Mark_i = 1
vim.keymap.set("n", "mi", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`i", function() vim.cmd(tostring(Mark_m)) end)
Mark_j = 1
vim.keymap.set("n", "mj", function() Mark_j = vim.fn.line(".") end)
vim.keymap.set("n", "`j", function() vim.cmd(tostring(Mark_j)) end)
Mark_k = 1
vim.keymap.set("n", "mk", function() Mark_k = vim.fn.line(".") end)
vim.keymap.set("n", "`k", function() vim.cmd(tostring(Mark_k)) end)
Mark_l = 1
vim.keymap.set("n", "ml", function() Mark_l = vim.fn.line(".") end)
vim.keymap.set("n", "`l", function() vim.cmd(tostring(Mark_l)) end)
Mark_m = 1
vim.keymap.set("n", "mm", function() Mark_m = vim.fn.line(".") end)
vim.keymap.set("n", "`m", function() vim.cmd(tostring(Mark_m)) end)
Mark_n = 1
vim.keymap.set("n", "mn", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`n", function() vim.cmd(tostring(Mark_n)) end)
Mark_o = 1
vim.keymap.set("n", "mo", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`o", function() vim.cmd(tostring(Mark_n)) end)
Mark_p = 1
vim.keymap.set("n", "mp", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`p", function() vim.cmd(tostring(Mark_n)) end)
Mark_q = 1
vim.keymap.set("n", "mq", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`q", function() vim.cmd(tostring(Mark_n)) end)
Mark_r = 1
vim.keymap.set("n", "mr", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`r", function() vim.cmd(tostring(Mark_n)) end)
Mark_s = 1
vim.keymap.set("n", "ms", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`s", function() vim.cmd(tostring(Mark_n)) end)
Mark_t = 1
vim.keymap.set("n", "mt", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`t", function() vim.cmd(tostring(Mark_n)) end)
Mark_u = 1
vim.keymap.set("n", "mu", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`u", function() vim.cmd(tostring(Mark_n)) end)
Mark_v = 1
vim.keymap.set("n", "mv", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`v", function() vim.cmd(tostring(Mark_n)) end)
Mark_w = 1
vim.keymap.set("n", "mw", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`w", function() vim.cmd(tostring(Mark_n)) end)
Mark_x = 1
vim.keymap.set("n", "mx", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`x", function() vim.cmd(tostring(Mark_n)) end)
Mark_y = 1
vim.keymap.set("n", "my", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`y", function() vim.cmd(tostring(Mark_n)) end)
Mark_z = 1
vim.keymap.set("n", "mz", function() Mark_n = vim.fn.line(".") end)
vim.keymap.set("n", "`z", function() vim.cmd(tostring(Mark_n)) end)

--- Meta abstractions
function FeedKeysCorrectly(keys)
local feedableKeys = vim.api.nvim_replace_termcodes(keys, true, false, true)
vim.api.nvim_feedkeys(feedableKeys, "n", true)
end

--- Remap abstractions
--# Multiply
local multiply_current_character = '"ryl"r' .. vim.v.count1 .. "p"
local multiply_selection = '"rygv<Esc>"r' .. vim.v.count1 .. "p"

--# Hops
function Hop_forward_f_sameline()
hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = true
})
end

function Hop_backward_f_sameline()
hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = true
})
end

function Hop_forward_t_sameline()
hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = true,
    hint_offset = -1,
})
end

function Hop_backward_t_sameline()
hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = true,
    hint_offset = 1,
})
end

--# Vscode: Folding
function Vscode_toggle_fold() vim.fn.VSCodeNotify("editor.toggleFold") end

function Vscode_fold_recursively() vim.fn.VSCodeNotify("editor.foldRecursively") end

function Vscode_fold_all() vim.fn.VSCodeNotify("editor.foldAll") end

function Vscode_unfold_all() vim.fn.VSCodeNotify("editor.unfoldAll") end

function Vscode_unfold_recursively() vim.fn.VSCodeNotify("editor.unfoldRecursively") end

function Vscode_goto_parent_fold() vim.fn.VSCodeNotify("editor.gotoParentFold") end

--# Vscode: All remaps
function Vscode_toggle_typewriter() vim.fn.VSCodeNotify("toggleTypewriter") end

--# Vscode: Normal remaps
function Vscode_trim_left() vim.fn.VSCodeNotify("yo1dog.cursor-trim.lTrimCursor") end

function Vscode_trim_right() vim.fn.VSCodeNotify("yo1dog.cursor-trim.rTrimCursor") end

function Vscode_trim_both() vim.fn.VSCodeNotify("yo1dog.cursor-trim.trimCursor") end

function Vscode_reveal_definition_aside() vim.fn.VSCodeNotify("editor.action.revealDefinitionAside") end

function Vscode_toggle_sticky_scroll() vim.fn.VSCodeNotify("editor.action.toggleStickyScroll") end

function Vscode_trim_trailing_whitespace() vim.fn.VSCodeNotify("editor.action.trimTrailingWhitespace") end

function Vscode_open_link() vim.fn.VSCodeNotify("editor.action.openLink") end

function Vscode_insert_line_above() vim.fn.VSCodeCall("editor.action.insertLineBefore") end

function Vscode_insert_line_above_moveup()
Vscode_insert_line_above()
vim.cmd("norm k")
end

function Vscode_outdent() vim.fn.VSCodeNotify("editor.action.outdentLines") end

function Vscode_indent() vim.fn.VSCodeNotify("editor.action.indentLines") end

function Vscode_comment() vim.fn.VSCodeNotify("editor.action.commentLine") end

function Vscode_reindent() vim.fn.VSCodeNotify("editor.action.reindentlines") end

function Vscode_convert_to_spaces() vim.fn.VSCodeNotify("editor.action.indentationToSpaces") end

function Vscode_convert_to_tabs() vim.fn.VSCodeNotify("editor.action.indentationToTabs") end

function Vscode_indent_with_spaces() vim.fn.VSCodeNotify("editor.action.indentUsingSpaces") end

function Vscode_indent_with_tabs() vim.fn.VSCodeNotify("editor.action.indentUsingTabs") end

function Vscode_change_encoding() vim.fn.VSCodeNotify("workbench.action.editor.changeEncoding") end

function Vscode_goto_references() vim.fn.VSCodeNotify("editor.action.goToReferences") end

function Vscode_goto_implementation() vim.fn.VSCodeNotify("editor.action.goToImplementation") end

function Vscode_goto_typedefination() vim.fn.VSCodeNotify("editor.action.goToTypeDefinition") end

function Vscode_save() vim.fn.VSCodeNotify("workbench.action.files.save") end

function Vscode_quite() vim.fn.VSCodeNotify("workbench.action.closeActiveEditor") end

function Vscode_goto_editor_symbol() vim.fn.VSCodeNotify("workbench.action.gotoSymbol") end

function Vscode_goto_workspace_symbol() vim.fn.VSCodeNotify("workbench.action.showAllSymbols") end

function Vscode_bookmark_toggle() vim.fn.VSCodeNotify("bookmarks.toggle") end

function Vscode_bookmark_list() vim.fn.VSCodeNotify("bookmarks.list") end

-- tabs
function Vscode_editor_next() vim.fn.VSCodeNotify("workbench.action.nextEditor") end

function Vscode_editor_previous() vim.fn.VSCodeNotify("workbench.action.previousEditor") end

function Vscode_editor_close_other() vim.fn.VSCodeNotify("workbench.action.closeOtherEditors") end

function Vscode_editor_new_untitled_file() vim.fn.VSCodeNotify("workbench.action.files.newUntitledFile") end

function Vscode_editor_close_all_tabs() vim.fn.VSCodeNotify("workbench.action.closeAllEditors") end

--- Vscode: Problem / diagnostics
function Vscode_editort_diagnostics_next() vim.fn.VSCodeNotify("editor.action.marker.next") end
function Vscode_editort_diagnostics_previous() vim.fn.VSCodeNotify("editor.action.marker.prev") end

-- Vscode: code action /  quick fix
function Vscode_editor_code_action_or_quick_fix() vim.fn.VSCodeNotify("editor.action.quickFix") end

--# Vscode: Visual remaps
--- function Vscode_vis_codesnap() vim.fn.VSCodeNotifyVisual("codesnap.start", true) end

function Vscode_vis_outdent() vim.fn.VSCodeNotify("editor.action.outdentLines", false) end

function Vscode_vis_indent() vim.fn.VSCodeNotify("editor.action.indentLines", false) end

function Vscode_vis_comment() vim.fn.VSCodeNotify("editor.action.commentLine") end
-- function Vscode_vis_comment() print("this is cliecked") end

function Vscode_vis_reindent() vim.fn.VSCodeNotify("editor.action.reindentselectedlines", true) end

--- Plugins: options
vim.g.camelcasemotion_key = "<leader>"
vim.g.targets_nl          = "nh"

--- Vscode
if vim.g.vscode then
--# Vscode: Folding
vim.keymap.set("n", "za", Vscode_toggle_fold)
vim.keymap.set("n", "zc", Vscode_fold_recursively)
vim.keymap.set("n", "zC", Vscode_fold_all)
vim.keymap.set("n", "zO", Vscode_unfold_all)
vim.keymap.set("n", "zo", Vscode_unfold_recursively)
vim.keymap.set("n", "zp", Vscode_goto_parent_fold)

--# Vscode: All remaps
vim.keymap.set("", "zy", Vscode_toggle_typewriter)

--# Vscode: Normal remaps
vim.keymap.set("n", "zh", Vscode_trim_left)
vim.keymap.set("n", "zl", Vscode_trim_right)
vim.keymap.set("n", "zi", Vscode_trim_both)
vim.keymap.set("n", "gD", Vscode_reveal_definition_aside)
vim.keymap.set("n", "gr", Vscode_goto_references)
vim.keymap.set("n", "gi", Vscode_goto_implementation)
vim.keymap.set("n", "gt", Vscode_goto_typedefination)
--vim.keymap.set("n", "<leader>s", Vscode_toggle_sticky_scroll)
vim.keymap.set("n", "==", Vscode_trim_trailing_whitespace)
vim.keymap.set("n", "gl", Vscode_open_link)
--vim.keymap.set("n", "<C-k>", Vscode_insert_line_above_moveup)
-- below is commented to use the neovim buidin
-- vim.keymap.set("n", "<<", Vscode_outdent)
-- vim.keymap.set("n", ">>", Vscode_indent)
vim.keymap.set("n", "gcc", Vscode_comment)
vim.keymap.set("n", "=>", Vscode_reindent)
vim.keymap.set("n", "=s", Vscode_convert_to_spaces)
vim.keymap.set("n", "=t", Vscode_convert_to_tabs)

--# LSP: Symbols
vim.keymap.set("n", "<leader>s", Vscode_goto_editor_symbol)
vim.keymap.set("n", "<leader>S", Vscode_goto_workspace_symbol)
vim.keymap.set("n", "<leader>w", Vscode_save)
vim.keymap.set("n", "<leader>b", Vscode_bookmark_list)
vim.keymap.set("n", "<leader>m", Vscode_bookmark_toggle)
---vim.keymap.set("n", "<leader>q", Vscode_quite)
--Tabs
-- vim.keymap.set("n", "<leader>tp", Vscode_editor_previous)
vim.keymap.set("n", "<leader>tp", ":Tabprevious<CR>")
-- vim.keymap.set("n", "<leader>tn", Vscode_editor_next)
vim.keymap.set("n", "<leader>tn", ":Tabnext<CR>")
vim.keymap.set("n", "<leader>to",":Tabonly<CR>")
-- vim.keymap.set("n", "<leader>to", Vscode_editor_close_other)
vim.keymap.set("n", "<leader>tt", Vscode_editor_new_untitled_file)
vim.keymap.set("n", "<leader>tc",":Tabclose<CR>")
vim.keymap.set("n", "<leader>ta", Vscode_editor_close_all_tabs)

--
vim.keymap.set("n", "]d", Vscode_editort_diagnostics_next)
vim.keymap.set("n", "[d", Vscode_editort_diagnostics_previous)
vim.keymap.set("n", "<leader>a", Vscode_editor_code_action_or_quick_fix)

--# Vscode: Visual remaps
-- vim.keymap.set("v", "gs", Vscode_vis_codesnap)
-- Commented to use neovim build in
-- vim.keymap.set("v", "<", Vscode_vis_outdent)
-- vim.keymap.set("v", ">", Vscode_vis_indent)

vim.keymap.set("v", "gc", Vscode_vis_comment)
vim.keymap.set("v", "=>", Vscode_vis_reindent)

--# Vscode: Insert remaps
vim.keymap.set("i", "<C-k>", Vscode_insert_line_above)
end

--- Remappings
--# Hops
vim.keymap.set("", "<leader>f", Hop_forward_f_sameline)
vim.keymap.set("", "<leader>F", Hop_backward_f_sameline)
vim.keymap.set("", "<leader>t", Hop_forward_t_sameline)
vim.keymap.set("", "<leader>T", Hop_backward_t_sameline)

--# Code block text object
vim.keymap.set("v", "im", "aBV")
vim.keymap.set("v", "am", "aBVj")
vim.keymap.set("v", "iM", "aBVok")
vim.keymap.set("v", "aM", "aBVjok")
vim.keymap.set("o", "im", function() vim.cmd("normal vaBV") end)
vim.keymap.set("o", "am", function() vim.cmd("normal vaBVj") end)
vim.keymap.set("o", "iM", function() vim.cmd("normal vaBVok") end)
vim.keymap.set("o", "aM", function() vim.cmd("normal vaBVjok") end)

--# Percent sign text object
vim.keymap.set("v", "i%", "T%ot%")
vim.keymap.set("v", "a%", "F%of%")
vim.keymap.set("o", "i%", function() vim.cmd("normal vT%ot%") end)
vim.keymap.set("o", "a%", function() vim.cmd("normal vF%of%") end)

--# Markdown heading text object
vim.keymap.set("v", "ir", "?^#<CR>oNk")

--# All remaps
vim.keymap.set("", "ga", "<Plug>(EasyAlign)")
vim.keymap.set("", ";", ":")
vim.keymap.set("", "'", '"')
vim.keymap.set("", "K", "ge")
vim.keymap.set("", "U", "gE")
vim.keymap.set("", ":", ",")
vim.keymap.set("", '"', ";")
vim.keymap.set("", "gm", "gM")

--# Normal remaps
vim.keymap.set("n", "grr", "<Plug>ReplaceWithRegisterLine")
vim.keymap.set("n", "Y", "yg_")
vim.keymap.set("n", "~", "~h")
vim.keymap.set("n", "Q", "@q")
vim.keymap.set("n", "gg", "ggzz")
vim.keymap.set("n", "G", "Gzz")

--# Visual remaps
vim.keymap.set("v", "*", '"ry/\\V<C-r>r<CR>')
vim.keymap.set("v", "#", '"ry?\\V<C-r>r<CR>')
vim.keymap.set("v", "u", "<Esc>u")
vim.keymap.set("v", "U", "<Esc>u")
vim.keymap.set("v", "<leader>q", multiply_selection)

--# Insert remaps
vim.keymap.set("i", "<C-l>", "<C-x><C-l>")
vim.keymap.set("i", "<C-u>", '<Esc>^"_c0<BS>')
vim.keymap.set("i", "<C-i>", '<Esc>"_S')
vim.keymap.set("i", "<C-h>", '<C-o>"_S<Esc><C-o>gI<BS>')

--# Control remaps
vim.keymap.set("", "<C-f>", "20jzz")
vim.keymap.set("", "<C-b>", "20kzz")
--vim.keymap.set("", "<C-d>", "<C-d>zz")
vim.keymap.set("", "<C-d>", "12jzz")
vim.keymap.set("", "<C-u>", "12kzz")
vim.keymap.set("", "<C-r>", "<C-r><C-o>")

--# Leader remaps
vim.keymap.set("", "<leader>/", function() vim.cmd("noh") end)
vim.keymap.set("", "<leader>`", "'")
vim.keymap.set("", "<leader>y", function() vim.cmd("set hlsearch!") end)
vim.keymap.set("n", "<leader>q", multiply_current_character)

--# Register remaps: all modes
vim.keymap.set("", "'w", '"0')
vim.keymap.set("", "'i", '"_')
vim.keymap.set("", "'e", '"-')
vim.keymap.set("", "'q", '"+')
vim.keymap.set("", "'r", '".')
vim.keymap.set("", "';", '":')

--# Register remaps: insert + command mode
vim.keymap.set("!", "<C-r>w", "<C-r><C-o>0")
vim.keymap.set("!", "<C-r>e", "<C-r><C-o>-")
vim.keymap.set("!", "<C-r>q", "<C-r><C-o>+")
vim.keymap.set("!", "<C-r>r", '<C-r><C-o>"')
vim.keymap.set("!", "<C-r>;", "<C-r><C-o>:")

--# Vertical movement
vim.keymap.set("v", "_", "-")
vim.keymap.set("n", "_", "-")

--# Operator pending remaps
vim.keymap.set("o", "b", "vb")
vim.keymap.set("o", "{", "V{")
vim.keymap.set("o", "}", "V}")
print("Config loaded successfully")

