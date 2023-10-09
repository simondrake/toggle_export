# Toggle Export

When changing a function/type/field from unexported to exported, or visa versa, generally you will use `vim.lsp.buf.rename` and:

1. Go to the start of the line
1. Change the word from upper-case to lower-case, or visa versa
1. Hit enter

This very small plug-in exposes one function that toggles between exported and unexported. Simply `:lua require('toggle_export').ToggleExport()`

**Note:** This only currently works for language that mark things as exported/unexported based on the first letter casing (e.g. Go).
