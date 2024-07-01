# frozen_string_literal: true

s = gets.chomp
# a = gets.split.map(&:to_i)

if s.chars.uniq.length > 1
  puts 'Yes'
else
  puts 'No'
end
