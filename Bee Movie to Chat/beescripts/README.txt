Hi there! I'm guessing you're interested in making your own edits to the "Bee Movie to Chat" mod!
In version 2.0, I've made it much easier to make such changes, so you don't need any programming knowledge.

IMPORTANT! PLEASE READ ALL OF THE FOLLOWING! 

First, you don't make any changes to the mod's original files. 
Instead, copy the "beescripts" folder (and its contents) into your mods/saves/ folder.
Then edit those copies instead- that way, whenever you update the "Bee Movie to Chat" mod, your edits will stay intact.

And here are the files you should be editing.

1. version.txt
The version needs to exactly match the version field BEESCRIPT_VERSION in menumanager.lua (minus the quotation marks). If you've freshly copied the beescripts folder, you don't need to do anything else except make sure it's there in your beescripts folder copy.
This file is here so that the game doesn't break if I change the formatting or schema of this mod in a future update.

2. prefix.txt
The very first line is used as the prefix for each chat message (the bit that's stuck on at the start)- for example, "[BeeMovie]".
This is used to detect (and ignore) lines sent by the script, so that the script can't hear and then subsequently start or stop itself. 
This cannot be empty!

3. script.txt
- This file is where your "Bee Movie Script" replacement should go.
- Each line in the script is sent sequentially (not randomly), as a separate chat message.
- There is no special formatting in this file,
- but empty lines or lines containing only space characters are skipped.

4. buzzwords.txt and bearwords.txt
Buzzwords and Bearwords are used to activate or de-activate the script playback, respectively.
- Uses Lua pattern formatting.
  This is similar to Regex, but not identical; there are some notable differences. (For example, ? can only match single characters, not patterns.)
  The following special characters are "magic characters" which perform special string searches, and you will need to "escape" them to avoid undesired behavior:
	( ) . % + - * ? [ ^ $
  To escape these characters, simply place a % in front of them.
  Eg. if you wanted to make a buzzword or bearword out of the string
		"i earn $420 over 69% of the time (including sundays & mondays)"
  then you would rewrite it as
		"i earn %$420 over 69%% of the time %(including sundays & mondays%)"
  See the Lua patterns documentation below for more information.

- While the script is not running,
  each incoming message (including those from yourself) is checked against each line in the buzzwords.txt file.
- If a match is found, the script resumes playback if it was paused previously, or else starts over at the first line.

- While the script is running,
  each incoming message (including those from yourself) is checked against each line in the bearwords.txt file.
- If a match is found, the script pauses playback if it was currently playing.

- (Note: If the script is paused, and then started again later in the same heist, it will then pick up after the line where it left off.)

6. messageturnedon.txt
- A line is randomly selected from each of the (non-empty) lines in this file
  whenever the script is activated by a Buzzword.
- There are also some special "macros" you can use here:
  $peer will be replaced by the name of the person who sent the Buzzword message.
  $word will be replaced by the Buzzword used, preserving its original case (as in uppercase/lowercase).
  $WORD will be replaced by the Buzzword used, but forced to all-capital letters.

7. messageturnedoff.txt
- A line is randomly selected from each of the (non-empty) lines in this file
  whenever the script is paused by a Bearword.
- There are also some special "macros" you can use here:
  $peer will be replaced by the name of the person who sent the Bearword message.
  $word will be replaced by the Bearword used, preserving its original case (as in uppercase/lowercase).
  $WORD will be replaced by the Bearword used, but forced to all-capital letters.


------ 

I encourage you to experiment and figure out how it works. Happy modding!

Lua patterns documentation: https://www.lua.org/pil/20.2.html
(You probably don't need this, but in case you were curious about the "special symbols" in the buzzwords and bearwords section earlier)