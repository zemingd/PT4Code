N = gets.to_i
arr = gets.to_s.chomp.split(" ").map(&:to_i)

ans = arr.sum - arr.size

p ans
