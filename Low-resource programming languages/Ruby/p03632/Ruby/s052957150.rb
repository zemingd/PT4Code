a = gets.chomp.split.map(&:to_i)
ans = 0
if a[0] >= a[2] and a[3] <= a[2] or a[2] >= a[0] and a[3] <= a[0]
  a.sort!
  ans = a[2] - a[1]
end
puts ans