-- Ctrl+f/b - прокручивать доку. Ctrl+space вызвать подсказку
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",
        ["<C-k>"] = { "fallback" }, -- Запрещаем Blink'у трогать C-k },
      },
      completion = {
        menu = {
          auto_show_delay_ms = function(ctx, items)
            return vim.bo.filetype == "markdown" and 1000 or 0
          end,
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
      },
      signature = {
        enabled = true,
        window = {
          show_documentation = false,
        },
      },
    },
  },
}

-- Set source kind icon and name
-- sources.providers.copilot.transform_items = function(ctx, items)
--   for _, item in ipairs(items) do
--     item.kind_icon = ''
--     item.kind_name = 'Copilot'
--   end
--   return items
-- end
