r = gets.to_i
g = gets.to_i
b = gets.to_i

count = r * 100 + g * 10 + b

if (count % 4) == 0
	puts "YES"
elsif
	puts "NO"
end
