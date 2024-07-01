# frozen_string_literal: true

X = gets.chomp.to_i

def prime?(num)
  return num if num == 2
  return num unless (2..((num / 2) + 1)).any? { |i| (num % i).zero? }

  num += 1
  prime?(num)
end

puts prime?(X)
