N = gets.to_i

numbers = Hash.new(0)

N.times do
  a = gets.to_i
  numbers[a] += 1
end

puts numbers.count {|k, v| v.odd? }