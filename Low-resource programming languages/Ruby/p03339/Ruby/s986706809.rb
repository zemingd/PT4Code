N =  gets.to_i

array = Array.new(N, 0)	#初期値0、要素数Nの配列
i = 0
gets.each_char do |ch|
	if ch == "W"
		for j in 0..i-1
			array[j] += 1
		end
	else
		for j in i+1..N-1
			array[j] += 1
		end
	end

	i += 1
end

print N-1-array.max
