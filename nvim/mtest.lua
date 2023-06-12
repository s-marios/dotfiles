-- TODO we need to truncate outputs when echoing
-- TODO use o.columns to truncate
-- :lua print vim.o.columns works
-- edit: it's vim.v.echospace that works!
local echoed = false

local get_line_diagnostic = function()
  local cur = vim.api.nvim_win_get_cursor(0)
  return vim.diagnostic.get(
    0, { lnum = cur[1] - 1
    })[1]
end

local truncate = function(msg)
  return
      string.sub(
        string.gsub(msg, "[\n\r\t]", ". "),
        1,
        vim.v.echospace)
end

local echo_diagnostics = function()
  local first_line_diag = get_line_diagnostic()

  if first_line_diag ~= nil then
    local truncated_diagnostic = truncate(first_line_diag.message)
    local strcmd = string.format(
      "echo '%s'",
      truncated_diagnostic)

    vim.api.nvim_command(strcmd)
    echoed = true
  elseif echoed == true then
    vim.api.nvim_command('echo ')
    echoed = false
  end
end

vim.api.nvim_create_autocmd(
  "CursorMoved",
  {
    pattern = "*",
    callback = echo_diagnostics,
  })
