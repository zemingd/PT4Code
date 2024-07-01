n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
lcm = 1
arr.each do |i|
  lcm = i.lcm(lcm)
end
puts arr.inject(0) { |acc, x| acc + ((lcm - 1) % x) }