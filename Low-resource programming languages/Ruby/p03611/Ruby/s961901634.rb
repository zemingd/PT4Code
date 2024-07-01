n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
ans = 0

(0..100000).each do |x|
  t = a.count(x + 1) + a.count(x) + a.count(x - 1)
  ans = t if t > ans
end
puts ans
