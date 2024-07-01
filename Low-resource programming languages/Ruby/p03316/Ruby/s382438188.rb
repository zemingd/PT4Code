n = gets.to_i
digit_sum = n.to_s.split('').map(&:to_i).inject(:+)
if n % digit_sum == 0
  puts 'Yes'
else
  puts 'No'
end
