N = gets.to_i
hash = {}
N.times do |i|
	str = gets.chomp.to_s
	if hash[str]
		hash[str] += 1
	else
		hash[str] = 1
	end
end

best = hash.values.max
hash = hash.select{|k,v| v == best}.sort
hash.map{|k,v| puts k}