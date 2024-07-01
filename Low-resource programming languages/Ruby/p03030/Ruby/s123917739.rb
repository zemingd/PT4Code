n = gets.chomp.to_i
hash = {}
no = {}
n.times do |i|
	ngo = gets.chomp.split 
	no[ngo[0]+"_"+ngo[1]] = i + 1
	if hash.has_key?(ngo[0])
		hash[ngo[0]] << ngo[1].to_i
	else
		hash[ngo[0]] = [ngo[1].to_i]
	end
end

#p no

arr = hash.to_a.sort{|a, b| a[0] <=> b[0]}
arr.each do |a|
	a[1] = a[1].sort.reverse
	a[1].each do |aa|
		puts no[a[0]+"_"+aa.to_s]
	end
end