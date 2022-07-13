local ftMap = {
    vim = 'indent',
    python = { 'indent' },
    javascript = {'indent'},
    git = ''
}
require('ufo').setup({
    open_fold_hl_timeout = 150,
    preview = {
        win_config = {
            border = { '', '─', '', '', '', '─', '', '' },
            winhighlight = 'Normal:Folded',
            winblend = 0
        },
        mappings = {
            scrollU = '<C-u>',
            scrollD = '<C-d>'
        }
    },
    provider_selector = function(bufnr, filetype)
        -- return a string type use internal providers
        -- return a string in a table like a string type
        -- return empty string '' will disable any providers
        -- return `nil` will use default value {'lsp', 'indent'}

        -- if you prefer treesitter provider rather than lsp,
        -- return ftMap[filetype] or {'treesitter', 'indent'}
        return ftMap[filetype]
    end
})
vim.keymap.set('n', 'K', function()
    local winid = require('ufo').peekFoldedLinesUnderCursor()
    if not winid then
        -- choose one of them
        -- coc.nvim
        vim.fn.CocActionAsync('definitionHover')
        -- nvimlsp
        vim.lsp.buf.hover()
    end
end)
