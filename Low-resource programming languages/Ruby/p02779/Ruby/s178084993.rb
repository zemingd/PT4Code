# frozen_string_literal: true

n = gets.to_i
a = gets.split.map &:to_i
if a.uniq.size == a.size
  puts 'YES'
else
  puts 'NO'
end