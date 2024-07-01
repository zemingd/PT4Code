s = gets.chomp

pattern1 = '01' * (s.size / 2)
pattern1 += '0' if s.size % 2 == 1
pattern2 = '10' * (s.size / 2)
pattern2 += '1' if s.size % 2 == 1

tiles1 = (pattern1.to_i(2) ^ s.to_i(2)).to_s(2).count('1')
tiles2 = (pattern2.to_i(2) ^ s.to_i(2)).to_s(2).count('1')

puts tiles1 < tiles2 ? tiles1 : tiles2
