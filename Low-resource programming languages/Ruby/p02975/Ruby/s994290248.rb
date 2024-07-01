n = gets.to_i
a = gets.split.map(&:to_i).sort

m = a.uniq.size
ans = 'No'
if m == 1
  ans = 'Yes' if a[0] == 0
elsif m == 2
  ans = 'Yes' if a[0] == 0 && a.count(0) * 3 == n
elsif m == 3
  x, y, z = a.uniq
  ans = 'Yes' if x ^ y == z && a.count(x) * 3 == n && a.count(y) * 3 == n
end
puts ans
