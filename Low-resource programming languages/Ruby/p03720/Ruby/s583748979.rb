n, m = gets.split.map &:to_i
ans  = Array.new(n, 0)

m.times do |i|
  a, b = gets.split.map &:to_i
  ans[a - 1] += 1
  ans[b - 1] += 1
end

puts ans
