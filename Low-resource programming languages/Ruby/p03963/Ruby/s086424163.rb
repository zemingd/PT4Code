n, k = gets.chomp.split(" ").map(&:to_i)
options = k
(n - 1).times do
  options *= (k - 1)
end
puts options