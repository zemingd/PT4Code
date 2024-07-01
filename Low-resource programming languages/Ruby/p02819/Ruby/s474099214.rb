x = gets.to_i
y = 0
ans = 0
require 'prime'
while y == 0
  if Prime.prime?(x)
    y = 1
  else
    x += 1
  end
end
puts x