n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
c = Array.new

for i in 0...n do
  c[i] = a[i] - (i + 1)
end

c.sort!

b = (n % 2 == 0)? c[n/2 -1]: c[(n-1)/2]

ans = Bignum.new(0)

for i in 0...n do
  ans += a[i] - b - i - 1
end

puts "#{ans}\n"
