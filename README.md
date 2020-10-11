# Boxing game hacked
I spent a few hours here and there trying to hack this game with cheat engine but with no luck. After a lot of trial and error I finally came up with a solution. I solved this problem by decompiling the `.swf` to assembly code, the issue at first was that I have barely worked with assembly code before, but with a lot of research I was able to find the solution and a way to accomplish my goal.
### How to use or modify this
1. Run `apt-get install flasm` to decompile and compile the `boxing_gd.swf` game file. (if you only want to run the hacked version skip to step 4)
2. Edit the `boxing_gd.asm` values you would like to change, this require that you understand assembly or know how to navigate to desired values.
3. Run `flasm -a boxing_gd.asm` to compile the game from the `boxing_gd.asm` file.
4. Open `flashplayer_32_sa_debug.exe` or download the original file from [adobe's website.](https://www.adobe.com/support/flashplayer/debug_downloads.html)

### What does the hacked version include?
1. All stats are set to base 70.
