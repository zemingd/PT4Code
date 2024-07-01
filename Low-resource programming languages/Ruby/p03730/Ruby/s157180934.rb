a,b,c = gets.chomp.split.map(&:to_i)
x = 0
ans = "NO"
(1..b-1).each do |i|
  x += a % i
  break ans = "YES" if x % b == c
end
puts ans
