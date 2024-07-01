#!/usr/bin/env ruby
n, k = STDIN.readline().strip().split(' ').map(&:to_i)
def c(n, k)
  k * (k - 1) ** (n-1)
end
puts "#{c(n, k)}"
