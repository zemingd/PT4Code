require "prime"

A, B = gets.split.map(&:to_i)
small, large = [A, B].sort

count = 1

Prime.each(small/2) do |prime|
  count += 1 if small % prime == 0 && large % prime == 0
end

count += 1 if small.prime? && large % small == 0

puts count
