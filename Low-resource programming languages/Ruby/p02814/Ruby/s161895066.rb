#!/usr/bin/ruby

N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)


lcm1 = 1
lcm2 = 1

A.each{|n|
  lcm1 = lcm1.lcm(n)
  lcm2 = lcm2.lcm(n/2)
}

count = M/lcm1

if count * lcm1 + lcm2 <= M
  count +=1
end

puts count
