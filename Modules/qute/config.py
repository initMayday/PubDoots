c.bindings.default = {}
c.tabs.position = "left"
c.colors.webpage.darkmode.enabled = True
c.input.insert_mode.auto_enter = False
c.input.insert_mode.auto_leave = False
c.input.forward_unbound_keys = "all"

config.bind('<Alt-s>', 'cmd-set-text -s :open')
config.bind('<Alt-q>', 'tab-prev')
config.bind('<Alt-e>', 'tab-next')
config.bind('<Alt-a>', 'tab-close')
config.bind('<Alt-w>', 'open -t')
config.bind('<Alt-c>', 'back')
config.bind('<Alt-v>', 'forward')
config.bind('<Alt-r>', 'cmd-set-text :config-source')
config.bind('<Ctrl-r>', ':reload')
config.bind('<Ctrl-f>', 'cmd-set-text /')
config.bind('<Alt-n>', 'search-next')
config.bind('<Alt-Shift-n>', 'search-prev')
# config.bind('<Alt-z>', )

# config.bind('td', 'config-cycle colors.webpage.darkmode.enabled true false')

config.bind(':', 'cmd-set-text :')
config.bind('<Up>', 'completion-item-focus --history prev', mode = 'command')
config.bind('<Down>', 'completion-item-focus --history next', mode = 'command')
config.bind('<Escape>', 'mode-leave')
config.bind('<Return>', 'command-accept', mode = 'command')
config.bind('<Tab>', 'completion-item-focus next', mode='command')
config.bind('<Shift-Tab>', 'completion-item-focus prev', mode='command')

c.url.start_pages = ["https://web.tabliss.io"]
c.url.default_page = "https://web.tabliss.io"
c.tabs.last_close = "startpage"  # Opens your start page

padding_size = 2
c.tabs.padding = {'top': padding_size, 'bottom': padding_size, 'left': padding_size, 'right': padding_size}
c.tabs.indicator.width = 0
c.tabs.width = 16 + padding_size*2  # or a specific pixel value like "40px"
c.tabs.title.format = ""  # Completely empty, icon only if favicon is shown

c.statusbar.widgets = ['clock:%H:%M:%S %p', 'keypress', 'search_match', 'url', 'scroll', 'history', 'tabs', 'progress']

config.load_autoconfig(False)
c.scrolling.smooth = True 

# Color palette
bg_dark = "#1a1a1a"
bg_medium = "#2a2a2a"
fg_normal = "#b0b0b0"
highlight = "#a04000"
fg_highlight = "#ffffff"

# Tab bar
c.colors.tabs.bar.bg = bg_dark
c.colors.tabs.even.bg = bg_medium
c.colors.tabs.even.fg = fg_normal
c.colors.tabs.odd.bg = bg_medium
c.colors.tabs.odd.fg = fg_normal
c.colors.tabs.selected.even.bg = highlight
c.colors.tabs.selected.even.fg = fg_highlight
c.colors.tabs.selected.odd.bg = highlight
c.colors.tabs.selected.odd.fg = fg_highlight

# Statusbar
c.colors.statusbar.normal.bg = bg_dark
c.colors.statusbar.normal.fg = fg_normal
c.colors.statusbar.command.bg = bg_dark
c.colors.statusbar.command.fg = fg_normal

# Completion (command palette)
c.colors.completion.fg = fg_normal
c.colors.completion.odd.bg = bg_medium
c.colors.completion.even.bg = bg_medium
c.colors.completion.category.fg = fg_highlight
c.colors.completion.category.bg = bg_dark
c.colors.completion.category.border.top = bg_dark
c.colors.completion.category.border.bottom = bg_dark
c.colors.completion.item.selected.fg = fg_highlight
c.colors.completion.item.selected.bg = highlight
c.colors.completion.item.selected.border.top = highlight
c.colors.completion.item.selected.border.bottom = highlight
c.colors.completion.match.fg = highlight
c.colors.completion.scrollbar.fg = highlight
c.colors.completion.scrollbar.bg = bg_medium
