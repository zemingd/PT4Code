n = gets.to_i
as = gets.split.map(&:to_i)
(n - 1).step(0, -2) do |i|
  print "#{as[i]} "
end
(n % 2).step(n - 1, 2) do |i|
  print "#{as[i]} "
end
