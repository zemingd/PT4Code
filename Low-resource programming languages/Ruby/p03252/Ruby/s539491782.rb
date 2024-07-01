S = gets.chomp
T = gets.chomp
table = {}
is_ok = (0..(S.size - 1)).all? do |i|
  s = S[i]
  t = T[i]
  if table[t].nil?
    table[t] = s
  end
  x = table[t]
  x == s
end
puts(is_ok ? 'Yes' : 'No')
