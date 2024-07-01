n, k = gets.chomp.split(' ').map(&:to_i)
as = gets.chomp.split(' ').map(&:to_i)
max_digits = k.to_s(2).length

max = 0
[0, 1].repeated_permutation(max_digits) do |a|
  x = a.join.to_i(2)
  next if x > k
  fx = as.map{|n| x ^ n}.reduce(:+)
  max = fx if fx > max
end

puts max