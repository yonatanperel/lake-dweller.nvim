# lake-dweller.nvim

<p align="center">A minimal dark colorscheme that you can actually read at a glance.</p>

<table>
  <tr>
    <td align="center"><img src="assets/lake-dweller.png" width="100%"><br><sub>Lake Dweller</sub></td>
    <td align="center"><img src="assets/ocean-dweller.png" width="100%"><br><sub>Ocean Dweller</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="assets/swamp-dweller.png" width="100%"><br><sub>Swamp Dweller</sub></td>
  </tr>
</table>

## Requirements

- Neovim >= 0.8.0
- `termguicolors` enabled
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (recommended for full syntax highlighting)

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "yonatan-perel/lake-dweller.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("lake-dweller").setup({
            -- your options here
        })
        vim.cmd.colorscheme("lake-dweller")
    end,
}
```

## Configuration

```lua
require("lake-dweller").setup({
    variant = "lake-dweller",  -- "lake-dweller", "ocean-dweller", "swamp-dweller"
    transparent = false,       -- enable transparent background
    italics = true,            -- enable italic text
    float_background = false,  -- distinct background for floating windows
})
```

## Extras

Additional theme files for other applications are in the `extras/` directory:

- **WezTerm**: `extras/wezterm/lake-dweller.toml`, `ocean-dweller.toml`, `swamp-dweller.toml`

### Lualine

```lua
require("lualine").setup({
    options = {
        theme = require("lualine.themes.lake-dweller"),
    },
})
```

## Color Palettes

### Lake Dweller

| Color | Hex | Usage |
|-------|-----|-------|
| ![#0e0e16](https://placehold.co/15x15/0e0e16/0e0e16.png) Dark Navy | `#0e0e16` | Background |
| ![#d8d8d8](https://placehold.co/15x15/d8d8d8/d8d8d8.png) Light Grey | `#d8d8d8` | Base text |
| ![#8ac490](https://placehold.co/15x15/8ac490/8ac490.png) Soft Green | `#8ac490` | Comments |
| ![#858d95](https://placehold.co/15x15/858d95/858d95.png) Muted Slate | `#858d95` | Keywords |
| ![#b0c0e0](https://placehold.co/15x15/b0c0e0/b0c0e0.png) Pale Blue | `#b0c0e0` | Functions |
| ![#70a8a8](https://placehold.co/15x15/70a8a8/70a8a8.png) Muted Cyan | `#70a8a8` | Types |
| ![#d58ca6](https://placehold.co/15x15/d58ca6/d58ca6.png) Rosy Pink | `#d58ca6` | Strings |
| ![#ef8a90](https://placehold.co/15x15/ef8a90/ef8a90.png) Bright Red | `#ef8a90` | Constants, errors |

### Ocean Dweller

| Color | Hex | Usage |
|-------|-----|-------|
| ![#0a1520](https://placehold.co/15x15/0a1520/0a1520.png) Deep Ocean | `#0a1520` | Background |
| ![#f0f4f8](https://placehold.co/15x15/f0f4f8/f0f4f8.png) Bright White | `#f0f4f8` | Base text |
| ![#60d8b0](https://placehold.co/15x15/60d8b0/60d8b0.png) Cyan-Green | `#60d8b0` | Comments |
| ![#90a0c0](https://placehold.co/15x15/90a0c0/90a0c0.png) Periwinkle | `#90a0c0` | Keywords |
| ![#90c8ff](https://placehold.co/15x15/90c8ff/90c8ff.png) Sky Blue | `#90c8ff` | Functions |
| ![#40e0d0](https://placehold.co/15x15/40e0d0/40e0d0.png) Turquoise | `#40e0d0` | Types |
| ![#ff90c0](https://placehold.co/15x15/ff90c0/ff90c0.png) Hot Pink | `#ff90c0` | Strings |
| ![#ff9090](https://placehold.co/15x15/ff9090/ff9090.png) Coral Red | `#ff9090` | Constants, errors |

### Swamp Dweller

| Color | Hex | Usage |
|-------|-----|-------|
| ![#101510](https://placehold.co/15x15/101510/101510.png) Dark Green | `#101510` | Background |
| ![#e0e8d8](https://placehold.co/15x15/e0e8d8/e0e8d8.png) Off-White | `#e0e8d8` | Base text |
| ![#90c890](https://placehold.co/15x15/90c890/90c890.png) Moss Green | `#90c890` | Comments |
| ![#909888](https://placehold.co/15x15/909888/909888.png) Taupe | `#909888` | Keywords |
| ![#e0d080](https://placehold.co/15x15/e0d080/e0d080.png) Golden Yellow | `#e0d080` | Functions |
| ![#60c090](https://placehold.co/15x15/60c090/60c090.png) Sage Green | `#60c090` | Types |
| ![#e8a070](https://placehold.co/15x15/e8a070/e8a070.png) Tan | `#e8a070` | Strings |
| ![#f08080](https://placehold.co/15x15/f08080/f08080.png) Dusty Red | `#f08080` | Constants, errors |


## Supported Plugins

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [Oil.nvim](https://github.com/stevearc/oil.nvim)
- [Trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [Snacks.nvim](https://github.com/folke/snacks.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)

## Philosophy

This theme makes some opinionated decisions based on the following principles:

### You don't need a color for *everything*

Only use distinct colors for specific, common elements—so you can tell at a glance what you're looking at:
1. Functions
2. Types
3. Keywords
4. Constant values—numbers, booleans, strings, nulls, etc. Strings can use slightly different shades for clarity.
5. Comments

### Keywords don't need your attention

Keywords are the most repetitive part of code and therefore the easiest to read quickly—you don't really need them to stand out.

### Comments are important

You should not neglect your comments. They should pop out immediately, while being easy to distinguish from actual code.

## Inspiration

- [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [rose-pine](https://github.com/rose-pine/neovim)
- [alabaster.nvim](https://github.com/p00f/alabaster.nvim)

## License

MIT
