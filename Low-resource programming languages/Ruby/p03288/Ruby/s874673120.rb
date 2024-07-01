# frozen_string_literal: true

R = gets.to_i
if R < 1200
  puts 'ABC'
elsif R >= 1200 && R < 2800
  puts 'ARC'
elsif R >= 2800
  puts 'AGC'
end
