n, a, b = gets.split.map(&:to_i)
if (b - a).even?
  puts (b - a) / 2
else
  # direct
  d = [b - 1, n - a].min
  
  # indirect
  # go nearest edge
  s_1 = [a - 1, n - b].min
  # wait until even (just 1 time)
  s_2 = 1
  # behave as even
  s_3 = (b - a - 1) / 2
  s = s_1 + s_2 + s_3
  puts [d, s].min
end
