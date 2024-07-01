s = gets.chomp
h = Hash.new(0)
h[0] = 0
h[1] = 0

s.each_char { |c| h[c] += 1 }

puts h.values.min * 2