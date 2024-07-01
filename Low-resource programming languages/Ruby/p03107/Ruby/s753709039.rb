s = gets.chomp
h = [0, 0]
(0..s.length-1).each { |i| h[s[i].to_i] += 1 }
puts h.min * 2