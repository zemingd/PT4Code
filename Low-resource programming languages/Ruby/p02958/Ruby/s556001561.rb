n = gets.to_i
p = gets.chomp.split.map(&:to_i)
sp = p.sort
res = 0
(0...n).each do |i|
  res += 1 if p[i] != sp[i]
  break if res > 2
end
puts (res > 2)? "NO" : "YES"