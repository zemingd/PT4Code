#!/usr/bin/env ruby
n = STDIN.readline.strip.split(' ').map(&:to_i)
k = STDIN.readline.strip.to_i
k.times do 
  _, i = n.each_with_index.max
  n[i] *= 2
end
def sum(a)
  a.inject(0){|sum, e|  sum += e}
end
puts sum(n)
