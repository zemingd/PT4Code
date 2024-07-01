# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

if a.size == a.uniq.size
  puts 'YES'
else
  puts 'NO'
end
