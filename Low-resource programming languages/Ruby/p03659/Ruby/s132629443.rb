n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
for i in 1..n-1
  a[i] += a[i-1]
end
ans = 10**10
for i in 0..n-2
  ans = [ans,(2*a[i]-a[-1]).abs].min
end
puts ans