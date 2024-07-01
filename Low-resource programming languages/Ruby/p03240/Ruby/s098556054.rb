n = gets.chomp.to_i
arr = Array.new(n)
n.times do |i|
	arr[i] = gets.chomp.split.map{|a| a.to_i + (10 ** 9)}
end

#p arr
ngo = 10 ** 9
0.upto(100) do |cx|
	0.upto(100) do |cy|
		flag = true
		h = (cx - arr[0][0] + ngo).abs + (cy - arr[0][1] + ngo).abs + arr[0][2]
		1.upto(n-1) do |i|
			hi = (cx - arr[i][0] + ngo).abs + (cy - arr[i][1] + ngo).abs + arr[i][2]
			if h != hi
				flag = false
				break
			end
		end
		if flag
			puts "#{cx} #{cy} #{h - (10 ** 9)}"
			exit
		end
	end
end


