S = gets.chomp
T = gets.chomp
s_table = {}
t_table = {}
is_ok = (0..(S.size - 1)).all? do |i|
  s = S[i]
  t = T[i]
  s_table[t] = s if s_table[t].nil?
  t_table[s] = t if t_table[s].nil?
  sx = s_table[t]
  tx = t_table[s]
  sx == s && tx == t
end
puts(is_ok ? 'Yes' : 'No')
