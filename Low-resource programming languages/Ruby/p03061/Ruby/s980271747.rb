gets; nums = gets.strip.split(' ').map(&:to_i)
res = 0
gcds_asc  = [0] + nums.map{|i| res = res.gcd i}
res = 0
gcds_desc = [0] + nums.reverse_each.map{|i| res = res.gcd i}
gcds_desc.pop
gcds_desc.reverse!
puts nums.size.times.map { |i|
  gcds_asc[i].gcd(gcds_desc[i])
}.max
