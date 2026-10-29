local exports = {}

function exports.is_windows_native()
  return vim.fn.has("win32") == 1 and vim.fn.has("wsl") ~= 1
end

return exports
