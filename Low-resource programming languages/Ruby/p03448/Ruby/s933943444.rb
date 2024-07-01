a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

counter = 0
sum = 0
(a + 1).times do |a_i|
  sum_a = 500 * a_i
  sum = sum_a
  if sum == x
    counter += 1
    next
  elsif sum > x
    next
  end
  (b + 1).times do |b_i|
    sum_b = 100 * b_i
    sum = sum_a + sum_b
    if sum == x
      counter += 1
      next
    elsif sum > x
      next
    end
    (c + 1).times do |c_i|
      sum_c = 50 * c_i
      sum = sum_a + sum_b + sum_c
      if sum == x
        counter += 1
        next
      elsif sum > x
        next
      end
    end
  end
end
puts counter
