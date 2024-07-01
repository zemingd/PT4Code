s = gets.chomp.chars.map(&:to_i)
s_i = s.index(7) ? s.index(7) : s.min
five = s[s_i+1].to_s
three = s[s_i+2].to_s
res = [s[s_i], five, three].map(&:to_s).join.to_i
puts (753 - res).abs