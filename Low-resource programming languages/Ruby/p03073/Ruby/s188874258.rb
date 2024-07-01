s = gets.chomp

total = 0
last_reversed = {nil => 0, 0 => 1}
before = s[0]

s.split("").each_with_index{ |c, i|
	next if i == 0
	temp = {}
	last_reversed.each { |k, v|
		if c == before then
			# 1つ前をひっくり返していて同じ
			if k != i - 1 then
				temp[i] = last_reversed[k] + 1
				last_reversed.delete(k)
			end
		else
			# 1つ前をひっくり返していて違う
			if k == i - 1 then
				temp[i] = last_reversed[k] + 1
				last_reversed.delete(k)
			end
		end
	}
	last_reversed = last_reversed.merge(temp)

	before = c
}

puts last_reversed.values.min