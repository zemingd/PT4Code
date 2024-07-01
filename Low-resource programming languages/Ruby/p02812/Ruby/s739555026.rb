# frozen_string_literal: true

n = gets.to_i
s = gets.chomp

i = 0
count = 0
loop do
  break if i > n - 2

  if s[i..(i+2)] == 'ABC'
    count += 1
    i += 3
  else
    i += 1
  end
end

puts count
