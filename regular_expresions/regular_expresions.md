 # Explaining regular expressions 

 ## from https://kodekloud.com/blog/regex-shell-script/ 

 ## https://www.fullstackfoundations.com/courses/bash-course-for-complete-beginners/bash-regex

## https://en.wikipedia.org/wiki/Regular_expression#POSIX_basic_and_extended


 Regular expressions (regex) are a powerful tool for defining patterns within text. 
 These patterns serve as robust mechanisms for searching, matching, and manipulating text, significantly reducing the amount of code and effort required to perform complex text-processing tasks. 
 When used within Bash scripts, regex can help automate and streamline a variety of operations


 Regex assist in:

 Data Extraction
 DAta Validation
 Data Transformation

 there are 2 main types:

 Ordinary Characters
 abc would match abc

 Metacharacters

 Metacharacters are characters that have a special meaning when used in a regex pattern. Unlike ordinary characters, which only match themselves,
 metacharacters can match a range of characters, a position, or act as modifiers to alter the behavior of part of your regex pattern

Here’s a breakdown of common metacharacters and their functions:

``^`` (caret): Matches the start of a string.

``$`` (dollar): Matches the end of a string.

``.`` (dot): Matches any single character except a newline character.

``[]`` (square brackets): Defines a character class, matching any one character within the brackets.

``{}`` (curly brackets): Specifies a specific quantity of characters to match.

``-`` (hyphen): Specifies a range of characters when used within square brackets.

``?`` (question mark): Makes the preceding character optional, matching zero or one occurrence.

``*`` (asterisk): Matches zero or more occurrences of the preceding character.

``+`` (plus): Matches one or more occurrences of the preceding character.

``()`` (parentheses): Groups expressions together.

``|`` (pipe): Indicates an OR condition between two expressions.

``\`` (backslash): Escapes a metacharacter, allowing it to be matched as a literal character.`

In Bash scripts, regular expressions can be used directly within the ``[[ ... ]]`` test construct by using the ``=~`` operator. 


```bash

[[ "$url" =~ ^https?://([^/]+) ]]

```
Let's break down the regular expression:


- ^https?:// is looking for strings that start with http:// or https://, where the s is optional due to the ? metacharacter.

- ([^/]+) is a capturing group that matches one or more characters that are not a forward slash, representing the domain part of the URL.

- BASH_REMATCH[0] will contain the entire string that matched the regex pattern. In the context of the above script, it would hold the entire URL if the URL conforms to the pattern specified by the regex.

- BASH_REMATCH[1], BASH_REMATCH[2], BASH_REMATCH[3], and so on, will contain the portions of the string that matched any capturing groups in the regex pattern, in the order that they appear in the pattern. Capturing groups are denoted by parentheses ( ) in the regex pattern and are used to capture a particular portion of the matched text.


grep = El comando grep (por sus siglas en inglés, Globally Search For Regular Expression and Print out) es una herramienta de línea de comando usada para buscar cadenas de texto y encontrar coincidencias dentro de archivos.

Remember, the ? is a special character, so we must "escape it" using the backslash.

```bash
cat sentences.txt | grep -P ".+\?$"


```

``\d`` - matches any digit (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)

``\s`` - matches any whitespace character (including newlines)

``\w`` - matches any alphanumeric character (letters and numbers)


``{1}`` - Matches exactly 1 of the preceding character

``{1,}`` - Matches 1 or more of the preceding character (identical to +)

``{2,6}`` - Matches between 2 and 6 of the preceding character

These are what we call "quantifiers", and they are extremely important. As you might have noticed, you can write any quantifier using the {} brackets alone, but sometimes, the *, +, and ? are quicker and cleaner to write. With these quantifiers, we can complete our expression.

this is the code fixed

```bash

echo "You can match me now because you know what a quantifier is" | grep -P "^You.+is$

```

