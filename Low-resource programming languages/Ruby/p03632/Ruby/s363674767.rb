a = gets.chomp.split.map(&:to_i)
ans = 0
if a[0] <= a[3] or a[1] >= a[2]
  a.sort!
  ans = a[2] - a[1]
end
puts ans