n, x = gets.chop.split.map(&:to_i)
a = gets.chop.split.map(&:to_i)
a.push(x).sort!
index = a.find_index(x)
d = 1
if index == 0
  d = a[1] - a[0]
elsif index == n - 1
  d = a[n-1] - a[n-2]
else
  d = [a[index+1] - a[index], a[index] - a[index-1]].min
end
d = 1 if a[0] + d != a[1]
puts d