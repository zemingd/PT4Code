N=gets.to_i
ss=$<.read.split

h = Hash.new(0)
ss.each { |s| h[s] += 1 }

ret = h.select {|k,v|h.values.max == v}.keys.sort

puts ret
