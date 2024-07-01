#!/usr/bin/env ruby
n, i = STDIN.readline.strip.split(' ').map(&:to_i)
x = STDIN.readline.strip.split(' ').map(&:to_i)
d = x.map{|xi| (xi - i).abs }
def gcd(a)
  a.inject(&:gcd)
end
puts gcd(d)
