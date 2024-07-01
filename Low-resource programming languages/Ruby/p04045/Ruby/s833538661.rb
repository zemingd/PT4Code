#!/usr/bin/env ruby
n, k = STDIN.readline.strip.split(' ').map(&:to_i)
ds = STDIN.readline.strip.split(' ').map(&:to_i)
d = ('0123456789'.split('').map(&:to_i) - ds).sort
def find_i(d, i)
  (0...d.length).each {|k| return k if d[k] >= i}
  nil
end
r = []
mode = 'find_i'
n.to_s.split('').map(&:to_i).map.each_with_index do |i, index|
  if mode == 'find_i'
    k = find_i(d, i)
#    puts "index:#{index}, k:#{k}, i:#{i}, d[0]:#{d[0]}, n.to_s.length:#{n.to_s.length}"
    if k.nil?
      mode = 'min'
      if index == 0
        r << (d[0] == 0 ? 1 : 0)
        r << 0
      else
        r[-1] += 1
        r << 0
      end
    else
      r << k
    end
  else
    r << 0
  end
#  puts "r:#{r}"
end
puts "#{r.map{|k| d[k]}.join('')}"
