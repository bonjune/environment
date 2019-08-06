1. git clone git@github.com:KihongHeo/environment.git
2. Install [vim-plug](https://github.com/junegunn/vim-plug)
3. Launch vim and run :PlugInstall
4. Install the following packages for [NeoFormat](https://github.com/sbdchd/neoformat):
- Python: https://github.com/google/yapf
- Ocaml: https://github.com/ocaml-ppx/ocamlformat
- Shell: https://github.com/mvdan/sh
- C/C++: https://clang.llvm.org/docs/ClangFormat.html
- JS/JSON: https://github.com/beautify-web/js-beautify
5. YCM setup
- [YCM](https://github.com/ycm-core/YouCompleteMe)
- [YCM-Generator](https://github.com/rdnetto/YCM-Generator)
- Install
```
cd ~/.vim/plugged/YouCompleteMe/ && python3 install.py --clangd-completer
```
