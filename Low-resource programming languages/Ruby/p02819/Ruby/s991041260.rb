# frozen_string_literal: true

X = gets.chomp.to_i

def next_prime(num)
  return num if num == 2
  return num unless (2..((num / 3) + 1)).any? { |i| (num % i).zero? }

  num += 1
  next_prime(num)
end

puts next_prime(X)
