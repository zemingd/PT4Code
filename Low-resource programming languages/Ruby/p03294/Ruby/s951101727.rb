n = gets.chomp.to_i
a = gets.split.map(&:to_i)
lcm = a.reduce(1) { |l, e| l.lcm(e) }
m = lcm - 1
puts a.reduce(0) { |sum, e| sum += m % e }
