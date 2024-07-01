n,a,b = gets.split.map &:to_i

x = b - a
y = a + b - 1
z = 2 * n - a - b + 1

if x.even?
  puts x / 2
else
  puts [y,z].min / 2
end
