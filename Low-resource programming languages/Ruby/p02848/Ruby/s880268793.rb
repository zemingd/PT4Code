N = gets.to_i
S = gets.chomp.chars
table = ('A'..'Z').map.with_index do |a, i|
  [a, i]
end.to_h
inverted = table.invert
ans = S.map do |ch|
  pos = table[ch]
  pos = (pos + N) % table.size
  inverted[pos]
end
puts ans.join('')
