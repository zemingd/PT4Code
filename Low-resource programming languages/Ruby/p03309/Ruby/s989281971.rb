n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
c = Array.new

for i in 0...n do
  c[i] = (a[i] - (i + 1)).abs
end

c.sort!

b = (n % 2 == 0)? c[n/2 -1]: c[(n-1)/2]

ans = 0

for i in 0...n do
  ans += (c[i] - b - i - 1).abs
end

puts "#{ans}\n"
