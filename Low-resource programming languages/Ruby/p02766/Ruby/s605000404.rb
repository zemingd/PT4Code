n, k = gets.chomp.split(" ").map(&:to_i)
count = 0
loop do
  count += 1
  n /= k
  break if n == 0
end
p count
