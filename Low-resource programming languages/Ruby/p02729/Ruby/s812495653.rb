n, m = gets.chomp.split(" ").map(&:to_i)

ans = 0
if n.times.to_a.length >= 2
  ans += n.times.to_a.combination(2).to_a.length
end
if m.times.to_a.length >= 2
  ans += m.times.to_a.combination(2).to_a.length
end
print "#{ans}\n"