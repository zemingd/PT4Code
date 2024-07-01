n = gets.to_i
as = $<.map(&:to_i)
i = 0
ans = 0
n.times {
  i = as[i] - 1
  ans += 1
  break if i == 1
}
puts (i == 1 ? ans : -1)
