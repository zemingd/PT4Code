def init_table(s)
  table = Hash.new { |h, k| h[k] = [] }
  s.size.times { |i| table[s[i]] << i }
  table
end

hs = init_table(gets.strip)
ht = init_table(gets.strip)

puts hs.values == ht.values ? 'Yes' : 'No'
