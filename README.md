# NEOVIM CONFIG
Minimal neovim config.

The final purpose is to use neovim as main text editor with minimal configuration. There are some recommended packages to be installed in your PC such as [htop](https://htop.dev) or [lazygit](https://github.com/jesseduffield/lazygit).

You can install all the packages and modules inside this NeoVim distribution by just saving the /lua/custom/plugins/plugin.lua file while openning it from neovim.

Lead key is space. Whenever you press space a menu will popup showing different hotkeys and it's function. If the function has a '+', this means that a submenu will show for that function. Examples:
- SPACE-a: You'll see Alpha starting menu.
- SPACE-g: You'll enter in the Git menu. Pressing d (or the whole sequence, <SPACE-g-d>) will show the git-diff for that buffer.

## Used pluggins.
The main function of this IDE is to use space as function trigger. But it works as an independent IDE with lot of functionalities:
    
*  Autopairs: Autoclosing pairs
    
*  Bufferline: Showing opened buffers at the top of the screen and not saved ones
    
*  CMP: Coding completion plugin
    
*  Comment: Easy and language agnostic commenting tool
    
*  GitSigns: Showing git activity on action column
    
*  Indentline: Showing lines per indentation
    
*  Mini: Compacted plugins for highlighting word under cursor or easy surround
    
*  Telescope: Fzf, livegrep...
    
*  Transparent: Easy support for transparency in some terminals
    
*  Treesitter: Coloring patterns for code
    
*  Treesittter-context: Pins functions/context at the top of the window if you scroll
    
*  WhichKey: Showing the keymaps you have as a pop up

    
## Used hotkeys.
Lead key: space

Escape: (press fast)j+k

## Used fonts.
Powerline.

Material fonts.
