-- INDENTS
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.mapleader = " "

vim.opt.clipboard = 'unnamedplus'

-- EPITECH HEADERS
vim.cmd([[
syntax on

set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
set smartindent

function! InsertHeaderC()
    let l:filename = expand("%:t")
    let l:header = [
                \ '/*',
                \ '** EPITECH PROJECT, 2024',
                \ '** ' . getenv('USER'),
                \ '** File description:',
                \ '** ' . l:filename,
                \ '*/',
                \ ''
                \ ]
    call append(0, l:header)
endfunction

function! InsertHeaderMakefile()
    let l:filename = expand("%:t")
    let l:header = [
                \ '##',
                \ '## EPITECH PROJECT, 2024',
                \ '## ' . getenv('USER'),
                \ '## File description:',
                \ '## ' . l:filename,
                \ '##',
                \ ''
                \ ]
    call append(0, l:header)
endfunction

autocmd BufNewFile *.c call InsertHeaderC()
autocmd BufNewFile Makefile call InsertHeaderMakefile()
]])
