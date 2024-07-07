return {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "auto", -- Options: 'latte', 'frappe', 'macchiato', 'mocha'
            background = {
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false, -- Disables setting the background color
            show_end_of_buffer = false, -- Shows the '~' characters after the end of buffers
            term_colors = false, -- Sets terminal colors (e.g., `g:terminal_color_0`)
            dim_inactive = {
                enabled = true, -- Dims the background color of inactive windows
                shade = "dark",
                percentage = 0.15, -- Percentage of the shade to apply to the inactive window
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false, -- Force no underline
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
                -- miscs = {}, -- Uncomment to turn off hard-coded styles
            },
            color_overrides = {},
            custom_highlights = {},
            default_integrations = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
                -- For more plugins integrations see https://github.com/catppuccin/nvim#integrations
            },
        })

        -- Autoset colorscheme based on time
        local time = os.date("*t")
        if time.hour < 7 or time.hour >= 18 then
            vim.cmd("colorscheme catppuccin-mocha")
        else
            vim.cmd("colorscheme catppuccin-latte")
        end
    end
}
