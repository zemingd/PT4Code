n = gets.to_i
x = gets.split.map(&:to_i)
ans = Float::INFINITY
102.times do |i|
  tmp = x.map { |xi| (xi - i) ** 2 }.inject(&:+)
  ans = tmp if ans > tmp
end
p ans