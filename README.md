My Vim configuration.  This Vim setup is geared mostly towards my Python development.

## Notes:
- Replaced Command-T with CTRL-P.  I like Command-T, but CTRL-P uses pure vimscript, and integrates easier with my setup environment.
- Using flake8 and vim indent file for Python
- Using YCM and Snipmate.  I like Snipmate for HTML files, and YCM for Python symbol lookup.
- Using NerdTree still, it's handy sometimes.
- More intelligent syntax and coloring scripts to highlight objects like "self"
- Sane coloring scheme using Zenburn
- Easymotion for jumping quickly to a location
- Pathogen for packaging

## Todo:
- Paste situation leaves something to be desired...
- setup.sh needs to be a little more intelligent
- Move some of my Python-specific mappings into the ftplugin directory
- Not using Zoom-Win or Command-T at the moment, they can probably be removed

## Setup:
```bash
git clone --recursive https://github.com/kflavin/vim.git
cd vim
./setup.sh
```

### Build YCM (handled by setup.sh script)
```bash
cd ~/.vim/bundle/YouCompleteMe/
./install.py # no clang support
```

### For Ubuntu 16.04:
sudo apt-get install vim-gnome-py2
sudo update-alternatives --set vim /usr/bin/vim.gnome-py2

Ensure python-dev packages are installed
```bash
sudo apt-get install python-dev
```

### Enable tern for javascript and jquery
- install node and npm
- Add jquery (an any other libraries) to your project
- Add the tern-project file to your project, and set it to jquery
- Run YCM install.py with --tern-complete (see setup.sh)
- You can optionally add other libraries as follows:
```json
  "loadEagerly": [
    "/home/user/project/js/**/*.js"
  ]
```



## Vim Hotkeys

#### Code Folding
zM - close all folds

zm - fold by level

zR - open all folds

zr - open level by level

zo - open at cursor

zO - open all levels at cursor

zc - close at cursor

#### Misc

##### Counting
Count highlighted visual lines - Highlight with "V", then c C-g
Count number of search occurrences - :%s/pattern//gn (omit 'g' to count lines)
