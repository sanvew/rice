# suspend system on laptop lid close

- STATUS: CLOSED
- PRIORITY: 100
- TAGS: utils

~~Create custom event in `/etc/acpi/events` which handles button/lid close and open.~~
Listeining to acpid.socket in `x/xinitrc.d/12-acpi-listen.sh` and parsint button/lid events.
There are some problems with suspend state since fans doesn't turnoff immediately.
