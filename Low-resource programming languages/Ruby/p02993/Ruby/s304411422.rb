n, l = gets.split(' ')

N = n.to_i
L = l.to_i
abs_min = 9999999999
ret_val = 9999999999
(0..N-1).each do |i|
  eated_taste = i + L
  sum = 0
  (0..N-1).each do |sum_i|
    sum = sum + sum_i + L unless sum_i == i
  end
  if (sum - eated_taste).abs < abs_min
    ret_val = sum
    abs_min = (sum - eated_taste).abs
  end
end

puts ret_val