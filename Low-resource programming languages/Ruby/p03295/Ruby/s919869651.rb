N,M = gets.chomp.split(" ").map(&:to_i)
strs = M.times.map{gets.split.map(&:to_i)}

strs.sort_by! { |a, b| b }

expect_bridge = 0
ans = 0
strs.each do |a, b|
  next if a <= expect_bridge
  ans += 1
  expect_bridge = b - 1
end
puts ans