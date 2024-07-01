n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
sum = arr.sort.slice(0, [n - k, 0].max).inject(:+)
puts sum == nil ? 0 : sum


