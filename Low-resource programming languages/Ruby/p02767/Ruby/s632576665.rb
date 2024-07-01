n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

m = (1..100).map { |p|
  arr.map { |x| (p - x) ** 2 }.sum
}.min

puts "#{m}"