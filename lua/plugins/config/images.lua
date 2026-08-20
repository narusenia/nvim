require("image").setup {
  backend = "kitty",
  processor = "magick_cli",
  integrations = {
    markdown = {
      enabled = true,
      clear_in_insert_mode = false,
      download_remote_images = true,
      only_render_image_at_cursor = false,
      filetypes = { "markdown", "vimwiki" },
    },
    neorg = {
      enabled = true,
      clear_in_insert_mode = false,
      download_remote_images = true,
      only_render_image_at_cursor = false,
      filetypes = { "norg" },
    },
  },
  max_width = nil,
  max_height = nil,
  max_width_window_percentage = nil,
  max_height_window_percentage = 50,
  kitty_method = "normal",
  hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" },
}

-- require("diagram").setup {
--   integrations = {
--     require("diagram.integrations.markdown"),
--     require("diagram.integrations.neorg"),
--   },
--   renderer_options = {
--     mermaid = {
--       background = "transparent",
--       theme = "dark",
--       scale = 2.45,
--     },
--     plantuml = {
--       charset = "utf-8",
--     },
--     d2 = {
--       theme_id = 1,
--       dark_theme_id = 200,
--       scale = -1,
--       layout = nil,
--       sketch = nil,
--     },
--   },
-- }
