n = gets.to_i

1.step(n).map do |i|
  s, p = gets.split
  [s, -(p.to_i), i]
end.sort.each do |(s, p, i)|
  puts i
end
