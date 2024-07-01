require 'prime'
x = gets.to_i
while true
  if Prime.prime?(x)
    break
  end
  x += 1
end
puts x