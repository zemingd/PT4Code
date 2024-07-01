n, m = gets.chomp.split.map(&:to_i)
ll, rr = 1, n
m.times do
  l, r = gets.chomp.split.map(&:to_i)
  ll = l if l > ll
  rr = r if r < rr
end
if rr < ll
  puts 0
else
  puts rr - ll + 1
end
