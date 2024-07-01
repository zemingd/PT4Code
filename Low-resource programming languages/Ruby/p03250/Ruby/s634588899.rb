s = gets.to_s.split.map{|t|t.to_i}.sort.reverse
ans = s[0] * 10 + s[1] + s[2]
puts ans