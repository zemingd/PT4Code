n = gets.to_i
hash = Hash.new(0)

n.times do
	ballot = gets.chomp
	hash[ballot] += 1
end

max_votes = hash.values.max
puts hash.select{|k,v| v == max_votes}.keys.sort