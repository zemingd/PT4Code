n, m = gets.split.map(&:to_i)
a = gets.split.map { |s| s.to_i >> 1 }
 
#b = a[0] ^ (a[0] - 1)
# 
#if a.any? { |i| i ^ (i - 1) != b }
#  puts 0
#  exit
#end
 
slcm = a.inject(1, :lcm)
 
puts (m / slcm + 1) / 2