n, k = gets.split(' ').map(&:to_i)

keta = 0

until n.zero? do
  n /= k
  keta += 1
end

puts keta
