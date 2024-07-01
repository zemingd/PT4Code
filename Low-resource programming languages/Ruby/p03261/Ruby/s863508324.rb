n = gets.to_i
sprev = gets.chomp

count = Hash.new(0)
count[sprev] += 1
(n-1).times do |i|
	snext = gets.chomp
	count[snext] += 1
	if count.values.include?(2)
		print("No\n")
		exit
	end
	if sprev[-1] == snext[0]
		sprev = snext
		next
	else
		print("No\n")
		exit
	end

end

print("Yes\n")