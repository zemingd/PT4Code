n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)
a.each {|e| h[e] += 1}

sum = 0
h.each_value {|v| sum += v * (v - 1) / 2}

a.each {|e| puts h[e] == 0 ? sum : sum - h[e] + 1}