My VIM configuration.

Todo:
- VIM git support
- YCM or snipmate?
- Better Pep8 support within VIM
- NERDTree doing some funky things with my windowing
- Ctrl-P or Command-T?
- Paste situation leaves something to be desired...
- setup.sh needs to be a little more intelligent

Setup:
git clone https://github.com/kflavin/vim.git
cd vim
./setup.sh

# Note Command-T requires ruby support. Verify it's compiled in:
# vim --version | grep ruby

# ...then run:
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
