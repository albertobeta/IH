#Word Sorting (by steps)

puts "Type a sentence:"
string_to_split = gets.chomp()

#1st we clean all non alphanumeric character, except spaces with a regexp
#NB \s leaves spaces, /u is for UTF8 encoding
string_cleaned = string_to_split.gsub(/[^\p{Alnum}\s]/u, '')

#2nd we split the sentece. NB split() by default splits by space
elements = string_cleaned.split()

#3rd we sort the elements of the array and ignore their case in the sorting
elements_sorted = elements.sort_by{|word| word.downcase}

puts "Words sorted alphabetically:"
puts elements_sorted
