require 'prime'
n = gets.to_i

until n.prime? do
  n += 1
end

puts n
