a, b, c = gets.chomp.split(" ").map { |input| input.to_i }
result = false
for i in 0..b-1
	if a * i %b == c
		result = true
	end
end

if result
	puts 'YES'
else
	puts 'NO'
end