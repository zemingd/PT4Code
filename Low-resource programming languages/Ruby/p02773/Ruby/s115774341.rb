def function(n)
	hash = Hash.new
	(0...n).each do |i|
		s = gets.chomp
		if hash.has_key?(s)
			hash[s] = hash[s] + 1
		else
			hash[s] = 1
		end
	end
	max = hash.max do |a, b|
		a[1] <=> b[1]
	end
	hash = hash.select { |_, v| v == max[1] }
	hash = hash.sort { |a, b| a[0] <=> b[0] }
	hash.map { |k, _| k }
end

n = gets.chomp.to_i
puts function(n)
