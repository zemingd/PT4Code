N = gets.to_i
Ps = gets.split.map(&:to_i)

ans = 0
min = 0

Ps.each_with_index do |n, i|
  min = n if (min == 0 || n <= min)
  ans += 1 if min >= n
end

puts ans
