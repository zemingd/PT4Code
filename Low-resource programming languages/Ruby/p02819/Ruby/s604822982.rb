require 'prime'

x = gets.to_i

res = -1
current = x
while res == -1
  res = current if current.prime?
  current += 1
end

puts res