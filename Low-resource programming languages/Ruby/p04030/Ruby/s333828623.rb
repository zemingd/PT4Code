# frozen_string_literal: true

s = gets.chomp
result = []

s.each_char do |c|
  if c == 'B'
    result.pop
  else
    result << c
  end
end

puts result.join