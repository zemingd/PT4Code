require "prime"

a, b = gets.split.map(&:to_i)
small, large = [a, b].sort

count = 1

1.step(small/2).each do |i|
  count += 1 if small % i == 0 && large % i == 0 && i.prime?
end

count += 1 if small.prime? && large % small == 0

puts count
