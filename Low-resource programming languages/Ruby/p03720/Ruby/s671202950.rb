n,m = gets.split(' ').map{|x|x.to_i}

count = (0...n).map{|x|0}.to_a
m.times do
	a,b = gets.split(' ').map{|x|x.to_i}
	count[a-1] += 1
	count[b-1] += 1
end

count.each{|c| puts c}
