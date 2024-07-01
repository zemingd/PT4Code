n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

sum = a.inject(&:+)
x = Array.new(n)
x[0] = a[0]
ans = (x[0] * 2 - sum).abs
for i in 1..n-2
   x[i] = x[i-1] + a[i]
   ans = (x[i] * 2 - sum).abs if ans > (x[i] * 2 - sum).abs
end

puts ans
