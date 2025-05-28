local function add_jsx_marks()
  print "JSX Marks function called!"
  local bufnr = vim.api.nvim_get_current_buf()
  local ns = vim.api.nvim_create_namespace "jsx_marks"

  -- Clear existing marks
  vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)

  -- Get TS tree
  local parser = vim.treesitter.get_parser(bufnr, "typescriptreact")
  local tree = parser:parse()[1]
  local root = tree:root()

  -- Query for components, returns, and imports
  local query = vim.treesitter.query.parse(
    "typescriptreact",
    [[
    ((function_declaration name: (identifier) @component) @comp)
    ((arrow_function) @comp)
    ((return_statement) @return)
    ((import_statement) @import)
  ]]
  )

  -- Apply marks
  for id, node in query:iter_captures(root, bufnr, 0, -1) do
    local type = query.captures[id]
    local start_row, start_col, _, _ = node:range()

    if type == "component" then
      vim.api.nvim_buf_set_extmark(bufnr, ns, start_row, start_col, {
        virt_text = { { "(c)", "Comment" } },
        virt_text_pos = "eol",
      })
    elseif type == "return" then
      vim.api.nvim_buf_set_extmark(bufnr, ns, start_row, start_col, {
        virt_text = { { "r", "WarningMsg" } },
        virt_text_pos = "right_align",
      })
    elseif type == "import" then
      vim.api.nvim_buf_set_extmark(bufnr, ns, start_row, start_col, {
        virt_text = { { "(i)", "Comment" } },
        virt_text_pos = "eol",
      })
    end
  end
end

-- Autocommand to run this on JSX/TSX files
vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged" }, {
  pattern = "*.tsx,*.jsx",
  callback = add_jsx_marks,
})
