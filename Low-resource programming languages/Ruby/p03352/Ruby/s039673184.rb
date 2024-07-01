X = gets.to_i
n = 1
a = []
(2..10).each do |i|
  while n**i <= X
    a << n ** i
    n += 1
  end
end
puts a.max
