# frozen_string_literal: true

n = gets.to_i

harshad = 0
n.to_s.split('').map(&:to_i).each do |i|
  harshad += i
end

if n % harshad == 0
  puts 'Yes'
else
  puts 'No'
end
