s = gets.chomp
k = gets.to_i
as = ('a'..'z').to_a
alps = Hash[as.map.with_index{ |a,i| [a,i] }]
(0...s.size).each{ |i|
  v = alps[s[i]]
  c = (26 - v) % 26
  if c <= k
    k -= c
    s[i] = 'a'
  end
}
#$stderr.puts s,k
s[-1] = as[(alps[s[-1]] + k) % 26]
puts s