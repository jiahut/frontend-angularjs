# roots v2.1.4
# Files in this list will not be compiled - minimatch supported
ignore_files: ['_*', 'readme*', '.gitignore', '.DS_Store']
ignore_folders: ['.git', 'node_modules']

watcher_ignore_folders: ['components', 'node_modules']

# Layout file config
# `default` applies to all views. Override for specific
# views as seen below.
layouts:
  default: 'blank.jade'
  # 'special_view.jade': 'special_layout.jade'

# Locals will be made available on every page. They can be
# variables or (coffeescript) functions.
locals:
  title: 'fontend'
  title_with_markup: ->
    "<h1 class='title'>fontend</h1>"

# Precompiled template path, see http://roots.cx/docs/#precompile
# templates: 'views/templates'
