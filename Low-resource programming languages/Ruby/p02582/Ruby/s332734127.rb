# frozen_string_literal: true

s = gets.chomp.chars

if s.count('R').zero?
  puts 0
elsif s.count('R') == 3
  puts 3
elsif s[1] == 'S'
  puts 1
else
  puts 2
end
