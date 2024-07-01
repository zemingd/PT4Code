n = gets.chomp.to_i
hash = {}
n.times do
	s = gets.chomp
	hash[s] = hash.has_key?(s) ? hash[s] + 1 : 1
end
max = hash.to_a.transpose[1].max
puts hash.to_a.select{|hh| hh[1] == max}.sort{|a,b| a[0] <=> b[0]}.transpose()[0]

#.sort{|a,b| a[0] <=> b[0]}