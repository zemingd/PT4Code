k = gets.to_i
num_even = k / 2
if k.even?
  num_odd = num_even
else
  num_odd = num_even + 1
end
puts num_even * num_odd
