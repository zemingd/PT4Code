#!/usr/bin/env ruby
n, k = STDIN.readline.strip.split(' ').map(&:to_i)
ds = STDIN.readline.strip.split(' ').map(&:to_i)
d = ('0123456789'.split('').map(&:to_i) - ds).sort
def find_i(d, i)
  (0...d.length).each {|k| return d[k] if d[k] >= i}
  nil
end
r = []
n.to_s.split('').map(&:to_i).reverse.map.each_with_index do |i, index|
  k = find_i(d, i)
  puts "index:#{index}, k:#{k}, i:#{i}, d[0]:#{d[0]}, n.to_s.length:#{n.to_s.length}"
  if k.nil? 
    r[index+1] ||= 0
    r[index] = d[0]
    r.push(d[0] == 0 ? d[1] : d[0] ) if index == n.to_s.length-1
  else
    r[index] ||= 0
    r[index] += k
  end
end
puts "#{r.reverse.join('')}"
