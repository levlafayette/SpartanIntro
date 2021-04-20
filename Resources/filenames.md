# When creating filenames any character can be used except to the `/` because that is a directory delimiter.

# However, just because (almost) any character can be used, doesn't mean any character should be used. Spaces in filenames, for example, are a bad practise.

touch "This is a long file name"   
for item in $(ls *); do echo ${item}; done

# Filenames with wildcards are not a particularly good idea either.

touch * # What are you thinking?!
rm * # Really?! You want to remove all files in your directory?
rm '*' # Safer, but shouldn't have been created in the first place.

# Best to keep to plain, old fashioned, alphanumerics. Snake_case or CamelCase is helpful.

touch "This_is_a_long_filename"
touch "ThisIsALongFilename
