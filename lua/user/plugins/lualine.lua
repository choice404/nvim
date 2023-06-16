local status, lualine = pcall(require, 'lualine')
if not status then
    return
end

-- local ll_nf = require('lauline.themes.nightfly')

-- local new_colors = {
--     blue = '#65D1FF',
--     green = '#3EFFDC',
--     violet = '#FF61EF',
--     black = '#000000'
-- }

-- ll_nf.normal.a.bg = new_colors.blue
-- ll_nf.insert.a.bg = new_colors.green
-- ll_nf.visual.a.bg = new_colors.violet
-- ll_nf.command = {
--     a = {
--         gui = 'bold',
--         bg = new_colors.yellow,
--         fg = new_colors.black
--     },
-- }

lualine.setup({
    -- options = {
    --     theme = 'lualine.themes.nightfly'
    -- }
})
