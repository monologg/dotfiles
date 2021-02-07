# dotfiles

```bash
$ bash dot_ubuntu.sh
```

## If `chsh` doesn't work...

- PEM Authication
  - `sudo vim /etc/pam.d/chsh`
  - `auth required pam_shells.so` -> `auth sufficient pam_shells.so`
  - `chsh -s $(which zsh)`

## Reference

- https://github.com/wookayin/dotfiles
