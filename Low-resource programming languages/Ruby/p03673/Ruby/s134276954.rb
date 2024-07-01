n = gets.to_i
a = gets.split.map(&:to_i)

if n.even?
  b = (n-1).step(1, -2).map{|i| a[i]}
  b += 0.step(n-2, 2).map{|i| a[i]}
else
  b = (n-1).step(0, -2).map{|i| a[i]}
  b += 1.step(n-2, 2).map{|i| a[i]}
end

puts b.join(' ')