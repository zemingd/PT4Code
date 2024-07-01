n = gets.chomp.to_i
s = gets.chomp.split(" ").map(&:to_i)
s = s.sort
ss = s.size
middle_ato = ss / 2
middle_mae = middle_ato - 1
puts s[middle_ato] - s[middle_mae]

