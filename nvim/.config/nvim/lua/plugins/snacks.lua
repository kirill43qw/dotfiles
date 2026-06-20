return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            -- ignored = true,
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },

      -- dashboard = {
      --   sections = (function()
      --     local images = {
      --       "wallhaven-vqlx38.jpg",
      --       "wallhaven-z8e8qy.jpg",
      --       "wallhaven-xlmlmo.jpg",
      --       "wallhaven-xe7rjv.png",
      --       "wallhaven-rr17gj.jpg",
      --       "wallhaven-rdwjj7.jpg",
      --       "wallhaven-qd9ve5.jpg",
      --       "wallhaven-gjy6j7.png",
      --       "wallhaven-9dpjw1.jpg",
      --       "wallhaven-85pgqk.jpg",
      --       "wallhaven-83ywmo.jpg",
      --       "wallhaven-7j3xm3.png",
      --       "wallhaven-5yd6d5.png",
      --       "wallhaven-3z3ry9.png",
      --       "wallhaven-3qwx1v.jpg",
      --       "wallhaven-2yp1k9.jpg",
      --       "wallhaven-2kmq8m.jpg",
      --       "wallhaven-1q1dgv.jpg",
      --       "wallhaven-13vym3.jpg",
      --       "train_snow_winter_99131_1920x1080.jpg",
      --       "pexels-emareynares-17613110.jpg",
      --       "kraska_mazki_piatna_208715_1920x1080.jpg",
      --       "iron-man (1920x1080).jpg",
      --       "field_tree_art_128386_1920x1080.jpg",
      --       "evening-hides-f80 (1920x1080).jpg",
      --       "derevo_planeta_zvezdy_117068_1920x1080.jpg",
      --       "bmw_avtomobil_bamper_191131_1920x1080.jpg",
      --       "astronaut_cosmonaut_spacesuit_145485_1920x1080.jpg",
      --       "48716-minimalizm_gory_krasnye_luna.jpg",
      --       "2022-11-01-scot-1-55022.jpeg",
      --       "2016-10-19-ak-47-typography-5LYY.jpg",
      --       "2016-10-18-venom-typography-j8k5.jpg",
      --       "2016-09-30-chicago-bulls-logo-Pj5z.jpg",
      --       "146517-logo-kapitan_amerika-minimalizm-krasnyj_cvet-flag-3840x2160.jpg",
      --       "1363735.png",
      --       "1363734.png",
      --       "1361729.png",
      --       "1353789.png",
      --       "1351657.png",
      --       "1341821.png",
      --       "1337509.png",
      --       "1063041.jpg",
      --     }
      --     math.randomseed(os.time())
      --     local random_image = images[math.random(#images)]
      --     local path = vim.fn.expand("~/.local/share/backgrounds/") .. random_image
      --     local cmd_str =
      --       string.format('chafa "%s" --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1', path)
      --     return {
      --       {
      --         section = "terminal",
      --         cmd = cmd_str,
      --         height = 17,
      --         padding = 1,
      --       },
      --       {
      --         pane = 2,
      --         { section = "keys", gap = 1, padding = 1 },
      --         { section = "startup" },
      --       },
      --     }
      --   end)(),
      -- },

      dashboard = {
        sections = {
          {
            section = "terminal",
            cmd = "chafa ~/.local/share/backgrounds/wallhaven-qd9ve5.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1",
            -- cmd = "chafa ~/.local/share/backgrounds/wallhaven-3qwx1v.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1",
            -- cmd = "chafa ~/.local/share/backgrounds/wallhaven-2kmq8m.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1",
            -- cmd = "chafa ~/.local/share/backgrounds/wallhaven-vqlx38.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1",
            height = 17,
            padding = 1,
          },
          {
            pane = 2,
            { section = "keys", gap = 1, padding = 1 },
            { section = "startup" },
          },
        },
      },
    },
  },
}

-- https://github.com/folke/snacks.nvim/discussions/111
