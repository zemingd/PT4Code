n = gets.to_i
input = gets.chomp.split(" ")
sum = input.reverse + input

sum = sum.select.with_index{|e, i|
	i % 2 == 0
}

if n == 1
	puts input
else
	puts sum.join(" ")
end
