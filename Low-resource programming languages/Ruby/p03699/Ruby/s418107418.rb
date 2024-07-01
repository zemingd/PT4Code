# frozen_string_literal: true

n = gets.to_i
s = Array.new(n) { gets.to_i }.sort
sum = s.inject(:+)

if sum % 10 == 0
  tmp = s.detect { |i| i % 10 != 0 }
  puts tmp ? sum - tmp : 0
else
  puts sum
end