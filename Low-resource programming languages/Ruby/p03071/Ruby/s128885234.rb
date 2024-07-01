a = gets.split.map(&:to_i)
a.sort
if a[0] == a[1] || a[1] - a[0] == 1
  puts a[0]*2
else
  puts a[1]*2 -1
end