n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
c = Array.new

for i in 0..(n-1) do
    c[i] =( a[i] - (i + 1)).abs
end
c.sort!
b = (c[((n-1.0)/2).round] + [(n/2).round] /2) if n % 2 == 0
b = c[((n-1.0)/2).round] if n % 2 == 1
puts b
for j in 0..(n-1) do
  ans += ( a[j] -(j+1+b)).abs
end

puts ans