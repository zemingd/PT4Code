S = gets.chomp
T = gets.chomp
table = {}
is_ok = (0..(S.size - 1)).all? do |i|
  s = S[i]
  t = T[i]
  table[t] ||= s
  x = table[t]
  s == x
end
puts(is_ok ? 'Yes' : 'No')
