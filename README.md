### best-blog

This is Andromeda's personal blog. It's served with [my webserver](https://git.mtgmonkey.net/Andromeda/best-blog.git) and is heavily inspired by [BMfW](http://bettermotherfuckingwebsite.com).

## build

# Try it out:

`nix run git+https://git.mtgmonkey.net/Andromeda/best-blog.git`

# Copy locally:

`git clone https://git.mtgmonkey.net/Andromeda/best-blog.git`
`cd best-blog`
`nix build`
`./result/bin/best-blog`

## usage

`best-blog` currently has no options and always starts on port 9345, panicking if the port is unavailable.

## contributing

This repo is for personal use; if I someday make it into a blog engine, contributions will be welcome, but for now, that would be weird.
