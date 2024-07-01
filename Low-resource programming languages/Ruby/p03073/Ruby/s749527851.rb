s = gets.chomp!
s_digit = s.length
s_i = s.to_i(2)

x1 = "01" * (s_digit / 2) + (s_digit % 2 == 1 ? '0' : '')
x2 = "10" * (s_digit / 2) + (s_digit % 2 == 1 ? '1' : '')

diff1 = (s_i ^ x1.to_i(2))
diff2 = (s_i ^ x2.to_i(2))

puts [
  diff1.to_s(2).chars.count {|ch| ch == '1' },
  diff2.to_s(2).chars.count {|ch| ch == '1' }
].min
