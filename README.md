# How to reproduce the bug

Install your favorite plugin manager (I am using
[minpac](https://github.com/k-takata/minpac) but you can make it work with other
plugin managers too).

Clone this repo.

From the root folder, start Neovim with the provided `init.vim`.

```
nvim -u ./init.vim test.js
```

In Neovim, make sure you have only ALE as a plugin (WARNING: this will clear
your plugins directory):

    call minpac#clean()
    call minpac#update()

Restart Neovim if necessary (using the same `-u ./init.vim` flag).
Look at the test.js file.
Two errors should be highlighted.

Remove the error by changing the variable name in `console.log(bar)` to
`console.log(something)`.

The error marks should be removed from the left column, but the highlighting
should partially stick.

If you **comment the custom error highlights** in `init.vim` and reload, the
problem goes away.
