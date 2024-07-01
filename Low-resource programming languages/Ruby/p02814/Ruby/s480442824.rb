n,m = gets.split.map &:to_i
as = gets.split.map &:to_i
as_h = as.map{ |x| x / 2}

lcm2 = as_h.inject(:lcm)
lcm1 = lcm2 * 2

puts m / lcm2 - m / lcm1
