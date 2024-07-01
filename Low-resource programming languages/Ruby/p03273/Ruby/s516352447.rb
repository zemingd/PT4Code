h, w = gets.chomp.split.map(&:to_i)
map = Array.new(h).map{Array.new(w)}
h.times do |i|
	map[i] = gets.chomp.split("")
end

ih = {}
jh = {}
h.times do |i|
	if map[i].uniq.length == 1 && map[i][0] == "."
		ih[i] = true
	else
		ih[i] = false
	end
end
mapt = map.transpose
w.times do |i|
	if mapt[i].uniq.length == 1 && mapt[i][0] == "."
		jh[i] = true
	else
		jh[i] = false
	end
end

h.times do |i|
	w.times do |j|
		print(map[i][j]) if ih[i] == false && jh[j] == false
	end
	puts if ih[i] == false
end
