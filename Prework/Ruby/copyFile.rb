#Copy a file (simple)

puts "source"
source = gets.chomp
source_content = IO.read(source)
IO.write("copy_"+source,source_content)