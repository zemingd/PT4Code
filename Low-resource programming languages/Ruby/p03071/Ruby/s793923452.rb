a = gets.split.map(&:to_i)
max = a.max
ans = 0

2.times do
  ans += max
  if !(a[0] == a[1])
    max -= 1
  end
end

puts ans