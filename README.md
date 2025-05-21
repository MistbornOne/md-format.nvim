# MD-Format.Nvim

## A Simple Markdown Formatter for Neovim

Markdown is a widely used style of writing and has particular methods for styling text. While these are not difficult to learn, they do take the extra time to manually style in most text editors, but this is especially so in Neovim.

As someone who writes in Neovim daily for work notes, blog posts, code, etc. I got tired of having to manually style my text and created a plugin.

**🔥 MD-Format.Nvim**

---

## How Does It Work?

When you are writing in markdown in Neovim, you have several commands and keymaps available to you to style your text. See the table below for the styling and the keymap to accomplish the style. Note, you can currently style an individual word in `NORMAL` mode and an entire line in `VISUAL` mode with the same keymaps 😎.

---

## 👨🏼‍💻 Usage

| Style         | Keymap        |
| ------------- | ------------- |
| **Bold**      | `<leader>mb`  |
| _Italic_      | `<leader>mi`  |
| ~~Strike~~    | `<leader>ms`  |
| `Code`        | `<leader>mc`  |
| `Codeblock`   | `<leader>mcb` |
| ==Highlight== | `<leader>mh`  |
| \* Bullet     | `<leader>mbu` |

---

## 📦 Installation

Using lazy.nvim:

```lua
return
{
  "MistbornOne/md-format.nvim",
  config = function()
    require("md-format").setup()
  end,
}
```

Using packer.nvim:

```lua
use({
  "MistbornOne/md-format.nvim",
  config = function()
    require("md-format").setup()
  end,
})

```

Using vim-plug:

```lua
Plug 'MistbornOne/md-format.nvim'

```

Then in your Lua config (after pluins are loaded):

```lua
require("md-format").setup()
```

---

## 💪🏼 Contribute

Feel free to open an issue or PR. Feature requests and bug reports are welcome.

---

## 📝 License

MIT © Ian Watkins
