# add screenshot script using golang

- STATUS: OPEN
- PRIORITY: 100
- TAGS: utils

Use [scrot](https://github.com/resurrecting-open-source-projects/scrot), xclip and golang.

Options list:
```
-e, --entire-screen    capture the entire screen (default)
-r, --region           interactively select a portion of the screen
-c, --clipboard        copy the result to the clipboard
```

DONT forget to exclude `./*.go` from `link: ~/.local/bin`.

script/script.conf.yaml snippet:
```yaml
- shell:
    - >
      OUT_DIR="$(pwd)/.build"; mkdir -p $OUT_DIR
      && go build -o $OUT_DIR/screencapture screencapture.go
      && cp $OUT_DIR/screencapture ~/.local/bin/screencapture
```
macos-like screenshot keybindings sxhkd/sxhkdrc.bak snippet:
```
########################################
# Screenshot                           #
########################################
alt + shift + 3
    screencapture -e

alt + shift + 4
    screencapture -r

alt + shift + ctrl + 3
    screencapture -ec

alt + shift + ctrl + 4
    screencapture -rc
```
