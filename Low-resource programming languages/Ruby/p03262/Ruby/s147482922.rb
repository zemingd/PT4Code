n, x = gets.split(" ").map(&:to_i)
points = gets.split(" ").map(&:to_i)

if n == 1
    puts (x - points[0]).abs
    exit
end

d = []
for i in 0..n-1
  d << (x - points[i]).abs
end
puts d.inject{|a, b| a.gcd(b)}
