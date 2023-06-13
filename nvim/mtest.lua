local exists_previous_message = false

local get_current_line_diagnostic = function()
  local cur = vim.api.nvim_win_get_cursor(0)
  return vim.diagnostic.get(
    0, { lnum = cur[1] - 1
    })[1]
end

-- To avoid hit-enter-prompts, truncate the message
local truncate = function(msg)
  return
      string.sub(
        string.gsub(msg, "[\n\r\t]", ". "),
        1,
        vim.v.echospace)
end

local echo_diagnostics = function()
  local first_line_diag = get_current_line_diagnostic()

  if first_line_diag ~= nil then
    local truncated_diagnostic = truncate(first_line_diag.message)
    local strcmd = string.format(
      "echo '%s'",
      truncated_diagnostic)

    vim.api.nvim_command(strcmd)
    exists_previous_message = true
  elseif exists_previous_message == true then
    vim.api.nvim_command('echo ')
    exists_previous_message = false
  end
end

vim.api.nvim_create_autocmd(
  "CursorMoved",
  {
    pattern = "*",
    callback = echo_diagnostics,
  })
