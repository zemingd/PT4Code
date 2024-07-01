n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = 0

n.times do |i|
  x = (a[i] <= b[i]) ? a[i] : b[i] 
  ans += x
  a[i] -= x
  b[i] -= x

  x = (a[i + 1] <= b[i]) ? a[i + 1] : b[i] 
  
  ans += x
  a[i + 1] -= x
  b[i] -= x
end

puts ans
