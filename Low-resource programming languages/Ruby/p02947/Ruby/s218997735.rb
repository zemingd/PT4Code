n = gets.chomp.to_i
hash = {}
cnt = 0
n.times do 
	s = gets.chomp.chars.sort.join
	if hash.has_key?(s)
		cnt += hash[s]
		hash[s] += 1
	else
		hash[s] = 1
	end
end
puts cnt
