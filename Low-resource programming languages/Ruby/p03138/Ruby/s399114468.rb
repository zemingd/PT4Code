n, k = gets.chomp.split(' ').map(&:to_i)
as = gets.chomp.split(' ').map(&:to_i)
max_digits = k.to_s(2).length
bits = max_digits.times.map{|d|
 n.times.map{|x| (x & (1 << d)) >> d}.reduce(:+)
}

max = 0
(max_digits + 1).times do |d|
  x = 1 << (d - 1)
  next if x > k
  fx = as.map{|n| x ^ n}.reduce(:+)
  max = fx if fx > max
end
  
puts max