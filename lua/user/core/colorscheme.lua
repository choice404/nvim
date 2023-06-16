local status, _ = pcall(vim.cmd, "colorscheme halcyon")
if not status then
    print("Colorscheme not found!")
    return
end
