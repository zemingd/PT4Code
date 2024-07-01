n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
sum = arr.inject(:+)
ahash = {}
arr.each do |a|
	if ahash.has_key?(a)
		ahash[a] += 1
	else
		ahash[a] = 1
	end
end

q = gets.chomp.to_i
hash = {}
q.times do |i|
	b, c = gets.chomp.split.map(&:to_i)
	if ahash.has_key?(b)
		sum += (c-b) * ahash[b]
		if ahash.has_key?(c)
			ahash[c] += ahash[b]
			ahash[b] = 0
		else
			ahash[c] = ahash[b]
			ahash[b] = 0 
		end
	end
	puts sum
end
