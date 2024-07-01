X = gets.to_i
n = 1
a = []
while n**2 <= X
  a << n ** 2
  n += 1
end
puts a.max
