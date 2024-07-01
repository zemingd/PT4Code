s = gets.strip.split('')
t = gets.strip.split('')

hs = {}
s.each { |c| hs[c] = hs[c].nil? ? 1 : hs[c] + 1 }

ht = {}
t.each { |c| ht[c] = ht[c].nil? ? 1 : ht[c] + 1 }

is_enable = false
if s.size == t.size
  as = hs.map { |char, count|  count }
  at = ht.map { |char, count|  count }
  is_enable = true if as == at
end

puts is_enable ? 'Yes' : 'No'
