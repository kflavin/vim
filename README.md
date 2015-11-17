My Vim configuration.  This Vim setup is geared mostly towards my Python development.

Notes:
- Replaced Command-T with CTRL-P.  I like Command-T, but CTRL-P uses pure vimscript, and integrates easier with my setup environment.
- Using flake8 and vim indent file for Python
- Using YCM and Snipmate.  I like Snipmate for HTML files, and YCM for Python symbol lookup.
- Using NerdTree still, it's handy sometimes.
- More intelligent syntax and coloring scripts to highlight objects like "self"
- Sane coloring scheme using Zenburn
- Easymotion for jumping quickly to a location
- Pathogen for packaging

Todo:
- Paste situation leaves something to be desired...
- setup.sh needs to be a little more intelligent
- Move some of my Python-specific mappings into the ftplugin directory
- Not using Zoom-Win or Command-T at the moment, they can probably be removed

Setup:
```bash
git clone https://github.com/kflavin/vim.git
cd vim
./setup.sh
```

Note Command-T (replaced, but still included under bundle/) requires ruby support. Verify it's compiled in:
```bash
vim --version | grep ruby
```

...then run:
```bash
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```

In order to use Command-T, uncomment the <leader>t mapping in .vimrc.  Note that CTRL-P is using that mapping currently.


YCM needs to be built.  It requires clang and some other dependencies to be installed.
```bash
cd ~/.vim/bundle/YouCompleteMe/
./install.py # no clang support
```
