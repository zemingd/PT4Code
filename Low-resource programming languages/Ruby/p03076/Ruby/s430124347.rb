sum = 0
r_max = 0
5.times do
  t = gets.to_i
  tt = ((t + 9) / 10) * 10
  sum += tt
  r = tt - t
  r_max = r if r_max < r
end
sum -= r_max
puts sum
