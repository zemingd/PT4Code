N, M = gets.split.map(&:to_i)
ab_list = N.times.map { gets.split.map(&:to_i) }

sorted = ab_list.sort_by { |(a, b)| [-b, -a] }
ans = 0
time = 0
sorted.each do |(a, b)|
  next if time + a > M
  time += 1
  ans += b
end
puts ans
