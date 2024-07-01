# frozen_string_literal: true

n = gets.to_i
s = gets.chomp

n.times do
  s.tr!('A-Z', 'B-ZA')
end

print s
