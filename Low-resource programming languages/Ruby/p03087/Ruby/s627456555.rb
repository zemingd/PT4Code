n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp.to_s

q.times do
  l, r = gets.chomp.split.map(&:to_i)
  
  p_s = s[l-1..r-1]
  r = p_s.scan('AC')
  puts r.count
end