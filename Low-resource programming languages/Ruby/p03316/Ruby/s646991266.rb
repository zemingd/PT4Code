# frozen_string_literal: true

n = gets.to_i

sum_digit = 0
n.to_s.split('').map(&:to_i).each do |i|
  sum_digit += i
end

if n % sum_digit == 0
  puts 'Yes'
else
  puts 'No'
end
