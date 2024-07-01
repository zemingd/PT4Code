# frozen_string_literal: true

s = gets.chomp.split('')

rainy_days = 0

start = s.find_index('R')

unless start
  puts rainy_days
  exit
end

(start..2).each do |index|
  if s[index] == 'R'
    rainy_days += 1
  else
    break
  end
end

puts rainy_days
