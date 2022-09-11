local status_ok, cfg = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
    return
end

cfg.setup{
    ensure_installed = {
        "javascript",
        "typescript",
        "lua",
        "bash",
        "swift",
        "go",
        "rust",
        "markdown",
        "json",
        "toml",
        "yaml",
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
      },
    indent = {enable = true, disable = {"yaml"}}
}