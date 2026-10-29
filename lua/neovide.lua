if vim.g.neovide then
  local padding_x = 32
  local padding_y = 32
  local floating_blur = 4.0

  vim.g.neovide_window_blurred = true
  vim.g.neovide_opacity = 0.7
  vim.g.neovide_floating_blur_amount_x = floating_blur
  vim.g.neovide_floating_blur_amount_y = floating_blur
  vim.g.neovide_floating_corner_radius = 12.0
  vim.g.neovide_padding_top = padding_y
  vim.g.neovide_padding_bottom = padding_y
  vim.g.neovide_padding_right = padding_x
  vim.g.neovide_padding_left = padding_x
  vim.g.neovide_cursor_animation_length = 0.023
  vim.g.neovide_position_animation_length = 0.023
  vim.g.neovide_scroll_animation_length = 0.023
end
