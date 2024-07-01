N = gets.to_i
S = gets.chomp.split(//)

cnt = 0
ary = [0]
S.each_with_index do |c, ix|
  cnt += 1 if c == '#'
  ary << cnt
end
# p ary

min = N
(N + 1).times do |x|
  left_b = ary[x]
  right_b = ary[N] - left_b
  right_w = N - x - right_b

  cost = left_b + right_w
  min = [min, cost].min
end
puts min
