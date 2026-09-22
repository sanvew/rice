# add script/utils contains template notification via notify-send

- STATUS: OPEN
- PRIORITY: 100
- TAGS: notification,scope,utils

In [20260907-190345](./20260907-190345/TASK.md) dunst notification was added.

Add shell functions into `script/utils` for notification urgency levels **low**, **normal**, **critical**.

In `script/dmenu/gopass-totp` send **normal** notification if otp doesn't exist for selected entry.
