#Word Sorting - Condensed version ;)

puts "Type a sentence:"
puts gets.chomp().gsub(/[^\p{Alnum}\s]/u, '').split().sort_by{|word| word.downcase}
