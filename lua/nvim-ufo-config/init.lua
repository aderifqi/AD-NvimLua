vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = -1
vim.o.foldenable = true

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

local ftMap = {vim = 'indent', python = {'indent'}, git = ''}
require('ufo').setup({
  open_fold_hl_timeout = 150,
  preview = {
    win_config = {
      border = {'', '─', '', '', '', '─', '', ''},
      winhighlight = 'Normal:Folded',
      winblend = 0
    },
    mappings = {scrollU = '<C-u>', scrollD = '<C-d>'}
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
local handler = function(virtText, lnum, endLnum, width, truncate)
  local newVirtText = {}
  local suffix = ('  %d '):format(endLnum - lnum)
  local sufWidth = vim.fn.strdisplaywidth(suffix)
  local targetWidth = width - sufWidth
  local curWidth = 0
  for _, chunk in ipairs(virtText) do
    local chunkText = chunk[1]
    local chunkWidth = vim.fn.strdisplaywidth(chunkText)
    if targetWidth > curWidth + chunkWidth then
      table.insert(newVirtText, chunk)
    else
      chunkText = truncate(chunkText, targetWidth - curWidth)
      local hlGroup = chunk[2]
      table.insert(newVirtText, {chunkText, hlGroup})
      chunkWidth = vim.fn.strdisplaywidth(chunkText)
      -- str width returned from truncate() may less than 2nd argument, need padding
      if curWidth + chunkWidth < targetWidth then
        suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
      end
      break
    end
    curWidth = curWidth + chunkWidth
  end
  table.insert(newVirtText, {suffix, 'MoreMsg'})
  return newVirtText
end

-- global handler
require('ufo').setup({fold_virt_text_handler = handler})

-- buffer scope handler
-- will override global handler if it is existed
local bufnr = vim.api.nvim_get_current_buf()
require('ufo').setFoldVirtTextHandler(bufnr, handler)

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
