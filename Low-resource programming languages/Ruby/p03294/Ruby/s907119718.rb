N = gets.to_i
arr = gets.to_s.chomp.split(" ").map(&:to_i)

ans = arr.inject(&:+) - arr.size

p ans
