" -------------------------------
" Python specific settings
" -------------------------------
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix
setlocal encoding=utf-8
setlocal t_Co=256               " 256 Colors required for zenburn
colorscheme zenburn             " Color theme
let b:python_highlight_all=1    " Highlight all Python syntax

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

