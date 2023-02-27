if vim.g.started_by_firenvim then
    vim.opt.laststatus = 0
    vim.opt.guifont = 'MesloLGS NF:h24'

    vim.cmd [[au BufEnter rds*.sankuai.com_*.txt set filetype=sql]]
    vim.cmd [[au BufEnter localhost_notebooks*.txt set filetype=python]]
    vim.cmd [[au BufEnter dev.sankuai.com_detail*.txt set filetype=markdown]]
    vim.cmd [[au BufEnter km.sankuai.com_*.txt set filetype=html]]
    vim.cmd [[au BufEnter lion.mws.sankuai.com_*.txt set filetype=confini]]
    vim.cmd [[au BufEnter lion.mws.sankuai.com_*.txt set lines=20]]

    vim.keymap.set('n', '<D-v>', '"+p', { remap = true, silent = true })
    vim.keymap.set('i', '<D-v>', '<c-r>+', { remap = true, silent = true })

    vim.g.firenvim_config = {
        localSettings = {
            ['.*'] = {
                takeover = 'never'
            },
            ['https://km.sankuai.com/.*$'] = {
                content = 'html'
            }
        }
    }
end
