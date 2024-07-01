n = gets.chomp.to_i
arr = Array.new(n).map{Array.new}
n.times do |i|
	ai = gets.chomp.to_i
	ai.times do 
		arr[i] << gets.chomp.split.map(&:to_i)
	end
end

max = 0
# 0→正直 1→嘘
[0, 1].repeated_permutation(n) do |bits|
	hone = Array.new(n, -1)
	bitscnt = bits.count(0)
	flag = true
	flag2 = true
	n.times do |i|
		arr[i].each do |a|
			# 正直処理
			if bits[i] == 0 then
				if hone[a[0]] != a[1] && hone[a[0]] != -1
					flag = false
					break
				end
				hone[a[0]] = a[1]
			# 嘘つき
			else
				if hone[a[0]] == a[1] && hone[a[0]] != -1
					flag = false
					break
				end
				hone[a[0]] = a[1] == 0 ? 1 : 0
			end
		end
		if !flag
			flag2 = false 
			break
		end
	end

	if flag2
		max = bitscnt if max < bitscnt 
	end
end

puts max
