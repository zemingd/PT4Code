X = gets.to_i
a = []
(2..10).each do |i|
  n = 1
  while n**i <= X
    a << n ** i
    n += 1
  end
end
puts a.max
