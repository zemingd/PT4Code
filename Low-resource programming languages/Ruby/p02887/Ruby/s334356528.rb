n = gets.to_i
s = gets.chomp.split('')

i = 0
count = 0

while i < n
	if s[i] != s[i+1]
		count += 1
	end
	i += 1
end

puts count