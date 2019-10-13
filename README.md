```
git clone git@github.com:KihongHeo/environment.git
cd environment
./setup.sh
```
## iTerm
- [Color schemes](https://github.com/mbadolato/iTerm2-Color-Schemes)
- [Powerline Font](https://github.com/powerline/fonts/): use Hack

## Z Shell
- [Oh My Zsh](https://ohmyz.sh)

## Vim
1. Install [vim-plug](https://github.com/junegunn/vim-plug)
2. Launch vim and run :PlugInstall
3. Install the following packages for [NeoFormat](https://github.com/sbdchd/neoformat):
- Python: https://github.com/google/yapf
- Ocaml: https://github.com/ocaml-ppx/ocamlformat
- Shell: https://github.com/mvdan/sh
- C/C++: https://clang.llvm.org/docs/ClangFormat.html
- JS/JSON: https://github.com/beautify-web/js-beautify
4. YCM setup
- [YCM](https://github.com/ycm-core/YouCompleteMe)
- [YCM-Generator](https://github.com/rdnetto/YCM-Generator)
- Install
```
cd ~/.vim/plugged/YouCompleteMe/ && python3 install.py --clangd-completer
```
