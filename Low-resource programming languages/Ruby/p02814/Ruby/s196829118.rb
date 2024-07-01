n,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
lcm = 1
a.each do |x|
  lcm = (x/2).lcm(lcm)
end
cnt = m/lcm - m/(lcm*2)
puts cnt