n, k = gets.split.map(&:to_i)

ans = 1
n.times do |i|
  if i == 0
    t = k
  else
    t = k - 1
  end
  ans *= t
end
puts ans
