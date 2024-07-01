n, k = gets.split.map(&:to_i)
ans  = 0
cnt  = 0

n.times do
  a, b = gets.split.map(&:to_i)
  cnt += b
  if cnt <= k
    ans = a
  end
end

puts ans
