# Examples

# a script designed to extract the domain name from a given url

#!/bin/bash

url=$1

if [[ "$url" =~ ^https?://([^/]+) ]]; then
    domain=${BASH_REMATCH[1]}
    echo "Domain name: $domain"
else
    echo "Invalid URL"
fi


# regular expression to match a string with 3 or more digits in it

echo "345" | grep -E '[0-9]{3,}' # 345

echo "I am some random text" | grep "random"

# What I just explained is called "literal text matching"

# example 2

cat http-request.txt | grep -P "^Date.+"

cat email-addresses.txt | grep -P "^[^\r\n]{1,}@[a-zA-Z0-9]{1,}(.com|.net){1}$"
cat email-addresses.txt | grep -P "^.+@\w+(.com|.net){1}$"