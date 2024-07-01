n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

m = arr.inject(arr[0]) { |res, a| res.lcm(a) } - 1

f = arr.map { |a| m % a }.sum

puts "#{f}"
