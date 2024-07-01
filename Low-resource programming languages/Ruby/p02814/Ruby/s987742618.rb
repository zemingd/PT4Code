require 'pp'

n, m = gets.split.map(&:to_i)
a_n = gets.split.map(&:to_i)

lcm = a_n.inject(1) {|ans, n| ans = ans.lcm(n / 2) }
pp lcm

if lcm % 2 == 0
    puts 0
else
    puts m / lcm - m / (lcm * 2)
end
