d, n = gets.chomp().split(" ").map(&:to_i)

array = []

100.times do |i|
  array << 100 ** d * (i + 1)
end

puts array[n - 1]
