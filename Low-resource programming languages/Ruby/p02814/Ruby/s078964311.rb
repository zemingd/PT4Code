_, m = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
lcm = 1
arr.each do |i|
  lcm = lcm.lcm(i)
end
half_lcm = lcm / 2
res = (m - half_lcm) / lcm
res += 1 if (m - half_lcm) % lcm > 0
puts res