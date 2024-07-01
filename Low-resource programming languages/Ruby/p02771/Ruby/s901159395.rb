# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)

if [a,b,c].uniq.size == 2
  puts 'Yes'
else
  puts 'No'
end
