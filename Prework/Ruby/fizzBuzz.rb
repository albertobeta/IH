#FizzBuzz

(1..100).each do |count|

	multiple3 = count%3 == 0
	multiple5 = count%5 == 0

	puts case
	when (multiple3 and multiple5) then "FizzBuzz"
	when multiple3 then "Fizz"
	when multiple5 then "Buzz"
	else count
	end

end
