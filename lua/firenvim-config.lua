if vim.g.started_by_firenvim then
    vim.opt.laststatus = 0
    vim.opt.guifont = 'MesloLGS NF:h24'
    vim.cmd [[au BufEnter rds*.sankuai.com_*.txt set filetype=sql]]

    vim.g.firenvim_config = {
        localSettings = {
            ['.*'] = {
                takeover = 'never'
            }
        }
    }
end
