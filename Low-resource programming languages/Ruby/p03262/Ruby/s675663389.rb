n, x = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

a = (xs + [x]).sort
diff = []
(a.size - 1).times do |i|
  diff.push(a[i + 1] - a[i])
end
if n > 1
g = diff[0].gcd(diff[1])
  (2..n-2).each do |i|
    g = g.gcd(diff[i])
  end
  puts g
else
  puts diff[0]
end
