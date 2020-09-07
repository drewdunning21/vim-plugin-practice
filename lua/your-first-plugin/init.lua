local function createFloatingWindow()
    -- local width = vim.fn.nvim_win_get_width(0)
    -- local height = vim.fn.nvim_win_get_height(0)
    local stats = vim.api.nvim_list_uis()[1]
    print('Width: ', width)
    print('Height: ', height)
    local bufh = vim.api.nvim_create_buf(false,true)

    local winId = vim.api.nvim_open_win(bufh, true, {
        relative = 'editor',
        width=stats.width -4,
        height=stats.height -4,
        col = 2,
        row = 2,
    })
end

local function onResize()
    print('asdasdf')
end

return {
    createFloatingWindow = createFloatingWindow,
    onResize = onResize
}
