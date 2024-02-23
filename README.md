
# autoremove

Execute `apt autoremove` after installing any package on your Debian/Ubuntu/(insert derivative name here) system!

## Installation

Edit `/etc/apt/apt.conf.d/99autoremove` and put the following in it:

```
DPkg::Post-Invoke { "/path/to/autoremove/autorem.sh"; };
```

Replace `/path/to/autoremove/autorem.sh` with your path.

## Why

idk just kinda felt like it
