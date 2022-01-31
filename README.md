# NEOVIM CONFIG
This Neovim Config is based on Chris@Machine's neovim from scratch.

The final purpose is configure the whole neovim IDE with lua. Right now seems bloated but will be debloated in the future.

Lead key is space and will pop up a menu with different hotkeys with access and explainatory usage. If the menu has different color and a '+' in front of the hotkey-name then it means there are more options inside, so you'll need to chain commands. For example, to pop up "Alpha" menu again just <space>a, and Alpha menu will pop up. In case you want to open LSP's hotkeys then <space>l and another menu will pop up with every single LSP command added on lua/user/whichkey.lua

## Used pluggins.
The main function of this IDE is to use space as function trigger. To save, for example, to check the buffers opened you just press "space+b". You'll trigger the pop up to show the floating window and displaying all the buffers opened at that moment.
## Used hotkeys.
Lead key: space
Escape: (press fast)j+k

## Used fonts.
Powerline.
Material fonts.
