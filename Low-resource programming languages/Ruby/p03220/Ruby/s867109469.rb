n = gets.to_i
t, a = gets.split(" ").map(&:to_i)
hs = gets.split(" ").map(&:to_i)

diff = Float::INFINITY
ans = nil
n.times do |i|
  if (a - (t - hs[i] * 0.006)).abs < diff
    diff = (a - (t - hs[i] * 0.006)).abs
    ans = i + 1
  end
end

puts ans