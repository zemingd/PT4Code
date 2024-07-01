n = gets.to_f
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
c = Array.new
d = Array.new
for i in 0..(n-1) do
    c[i] =( a[i] - (i + 1)).abs
end
c.sort!
b = c[((n-1)/2).round]

for j in 0..(n-1) do
  ans += ( a[j] -(j+1+b)).abs
end

puts ans