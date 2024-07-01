n = gets().to_i
a = gets().to_i
b = gets().to_i
c = gets().to_i
d = gets().to_i
e = gets().to_i

capacity = [a, b, c, d, e]
move = Array.new(5) {[]}

capacity.each_with_index {|cap, i|
	lastarr = 0

	if i == 0
		ni = n
	else
		ni = 0
		move[i - 1].each {|m|
			if m[:num] + ni >= cap
				move[i].push({dep: m[:dep] + 1, arr: m[:arr] + 1, num: cap})
				lastarr = m[:arr] + 1
				ni += (m[:arr] - m[:dep]) * (m[:num] - cap)
			else
				move[i].push({dep: m[:dep] + 1, arr: m[:arr] + 1, num: m[:num] + ni})
				lastarr = m[:arr] + 1
			end
		}
	end

	if ni > 0
		move[i].push({dep: lastarr,              arr: lastarr + (ni / cap),     num: cap})      if ni / cap > 0
		move[i].push({dep: lastarr + (ni / cap), arr: lastarr + (ni / cap) + 1, num: ni % cap}) if ni % cap > 0
	end
}

puts move.last.last[:arr]
