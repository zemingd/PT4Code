n, k = gets.chomp.split(' ').map(&:to_i)
as = gets.chomp.split(' ').map(&:to_i)
max_digits = k.to_s(2).length

bits = max_digits.times.map do |d|
  as.map{|a| ( a & (1 << d)) >> d }.reduce(:+)
end

min_bit = bits.min

indexes = bits.map.with_index{|b, i| b == min_bit ? i : nil}.compact

max = 0

(indexes.length + 1).times do |d|
  indexes.combination(d) do |c|
    x = c.reduce(0){|s, i| s + (1 << i) }
    next if x > k
    fx = as.map{|n| x ^ n}.reduce(:+)
    max = fx if fx > max
  end
end
  
puts max
