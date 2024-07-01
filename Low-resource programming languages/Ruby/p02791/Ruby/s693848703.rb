N = gets.to_i
Ps = gets.split.map(&:to_i)

ans, mn = 0, 10**6
Ps.each do |p|
  next if p > mn
  ans += 1
  mn = p
end
puts ans