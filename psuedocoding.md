### Classes ###
- information reading class
- file creating class
- braille translation class

### Iteration 1 ###
- create the night_writer, night_writer_spec and message files
- write a 256 character message in message.txt
- write a program that will read the text in message and create a new file with the same message
- include 'Created 'braille.txt' containing 256 characters' in the command line
- update again so the command line can take the argument of the second file and will create a new file based on that
- make the 'Created 'braille.txt' containing 256 characters' change character count based on the character count of the starting file

### Iteration 2 ###
- Create a dictionary of some sort that allows you to look up a English letter and find its Braille equivalent.
- Update your program to take an input file with a single letter and create an output file with the Braille equivalent.
- Update your program again so that it can take multiple letters. Compare results with a classmate.
- Update the program so that messages of more than 80 characters are split over multiple lines.

### Iteration 3 ###
- Using your existing Ruby program as a template, create a new program called NightReader that prints a confirmation message to the terminal that contains the name of the file that the user input as their second argument.
- Calculate the number of characters in the file provided as input and include that in the confirmation message.
- Create a dictionary that maps some representation of Braille characters to English characters.
- Convert a single Braille character contained in your input file into a single English character in your output file.
- Convert multiple Braille characters into multiple English characters.
- Convert a file containing multiple lines of Braille into English characters.
