n = gets.to_i
arr = gets.split(" ").map(&:to_i)

n = 1
line = 10**18
arr.each do |a|
  n *= a
end

puts n >> 10**18 ? -1 : n
