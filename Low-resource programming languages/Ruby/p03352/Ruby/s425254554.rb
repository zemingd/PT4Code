x = gets.to_i
res = [1]
2.step(Math::log2(x).to_i) do |p|
  b = 2
  b += 1 while (b + 1) ** p <= x
  res << b ** p
end
puts res.max