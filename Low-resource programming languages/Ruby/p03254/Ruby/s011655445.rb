n, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort.reverse
if a.inject(:+) == x
  puts n
  exit
end

c = 0
n.times do |i|
  next if x < a[i]
  c += 1
  x -= a[i]
end

if x == 0
  puts c
else
  p c - 1
end
