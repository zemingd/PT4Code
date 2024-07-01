gets.chomp
data = gets.chomp.split(' ').map(&:to_i)

lcm = data[0]
data[1, 10000].each { |n| lcm = lcm.lcm(n) }

lcm = lcm - 1
ret = 0
data.each { |n| ret += lcm % n}
puts ret

