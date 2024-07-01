n = gets.to_i

sp = Array.new
n.times do |i|
	sp.push(gets.chomp.split.push(i))
end

sp.sort! do |sp1, sp2|
	sp2[1].to_i <=> sp1[1].to_i
end

sp.sort! do |sp1, sp2|
	sp1[0] <=> sp2[0]
end

n.times do |i|
	puts sp[i][2] + 1
end