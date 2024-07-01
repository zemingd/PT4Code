n   = gets.to_f
ans = 1E15 + 10
5.times do
  ary = [ans, gets.to_i].min
end
puts (n / ans).ceil