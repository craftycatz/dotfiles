local status_ok, cfg = pcall(require, 'poimandres')
if not status_ok then
    return
end

cfg.setup {
      bold_vert_split = true, -- use bold vertical separators
      disable_background = true, -- disable background
      disable_float_background = true, -- disable background for floats
}
