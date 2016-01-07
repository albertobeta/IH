#FizzBuzzBang

(1..100).each do |count|

result = ""
multiple3 = count%3 == 0
multiple5 = count%5 == 0
starts_with_1 = count.to_s.start_with?("1")

result = result + "Fizz" if multiple3
result = result + "Buzz" if multiple5
result = result + "Bang" if starts_with_1
result = count if result.empty?

puts result

end
