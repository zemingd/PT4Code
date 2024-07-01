require 'prime'
x = gets.to_i
t = x
prime = nil
loop do
  if Prime.prime?(t)
    prime = t
    break
  else
    t += 1
  end
end
puts prime
