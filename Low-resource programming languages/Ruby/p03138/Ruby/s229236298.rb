def xor(as, n, k)
  sum = 0
  as.each { |a| sum += n ^ a }
  return sum
end

n, k = gets.chomp.split(' ').map(&:to_i)
as = gets.chomp.split(' ').map(&:to_i)
results = []
(k+1).times { |i| results << xor(as, i, k) }
puts results.max