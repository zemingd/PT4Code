n,m = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i)
rs = m.times.map{gets.chomp.split.map(&:to_i)}

array = Array.new(n){Array.new}
cnt = 0
rs.each do |a,b|
	array[a-1] << b-1
	array[b-1] << a-1
end

array.each_with_index do |as,i|
	flag = true
	h1 = hs[i]
	as.each do |r|
		if h1 <= hs[r]
			flag = false
		end
	end
	cnt += 1 if flag
end

puts cnt