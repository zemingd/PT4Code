s0 = gets.chars.map(&:to_i)
s1 = s0[0] * 10 + s0[1]
s2 = s0[2] * 10 + s0[3]

if s1 * s2 == 0 || (s1 > 12 && s2 > 12)
  puts :NA

elsif s1 > 12
  puts :YYNN

elsif s2 > 12
  puts :NNYY

else
  puts :AMBIGUOUS

end
