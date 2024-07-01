N = gets.to_i
Ps = gets.split.map(&:to_i)

ans = 0
Ps.each_with_index do |n, i|
  ans += 1 if Ps[0..i].min >= n
end

puts ans
