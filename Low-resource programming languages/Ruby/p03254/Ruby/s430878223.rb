n, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort.reverse

c = 0
n.times do |i|
  next if x < a[i]
  c += 1
  x -= a[i]
end

if x == 0 && c != n
  puts c
else
  p c - 1
end
