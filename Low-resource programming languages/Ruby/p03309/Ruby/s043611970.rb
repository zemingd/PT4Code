n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = 100000000000
tmp = 0
c = Array.new
d = Array.new
for i in 0..(n-1) do
    c[i] =( a[i] - (i + 1)).abs
end
puts c
b = (c.inject(:+)/n).round

for j in 0..(n-1) do
    d[j] =( a[j] -(j+1+b)).abs
end

puts d.inject(:+)