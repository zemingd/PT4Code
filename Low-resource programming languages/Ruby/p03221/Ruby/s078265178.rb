n, m = gets.chomp.split.map(&:to_i)
arr = Array.new(m)
m.times do |i|
	arr[i] = gets.chomp.split.map(&:to_i)
end

ken = Array.new(n+1).map{Array.new()}
arr.each do |pp, yy|
	ken[pp] << yy
end

hash = {}
(n+1).times do |i|
	ken[i] = ken[i].sort
	ken[i].length.times do |j|
		hash[ken[i][j]] = i.to_s.rjust(6, "0") + (j+1).to_s.rjust(6, "0")
	end
end

arr.each do |pp, yy|
	puts hash[yy]
end
