# add screencapture script

- STATUS: CLOSED
- PRIORITY: 100
- TAGS: utils

Use **ffmpeg** for screen capture, [slop](https://github.com/naelstrof/slop) for region selection, and **xclip**.

Options list:
```
-e    capture the entire screen (default)
-r    interactively select a portion of the screen
-c    copy the result to the clipboard
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

