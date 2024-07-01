#!/usr/bin/env ruby
n, m = STDIN.readline.strip.split(' ').map(&:to_i)
py = STDIN.read.split("\n").each_with_index.map{|s, i| s.split(' ').map(&:to_i) + [i] }
def zero_p(i)
  i.to_s.rjust(6, '0')
end
py.sort_by!{|a| [a[0], a[1]]}
# puts "#{py}"
pre_pi = 0
p = []
yi = 0
py.each do |pi, y, i|
  yi = 1 if pre_pi != pi
#  puts "pi:#{pi}, y:#{y}, i:#{i}, yi:#{yi}"
  pre_pi = pi
  p[i] = zero_p(pi) + zero_p(yi)
  yi += 1
end
p.each do |l|
  puts l
end
