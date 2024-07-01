N=gets.to_i
ss=$<.read.split
h={}
ss.each do |s|
  h[s] ||= 0
  h[s] += 1
end

ret = h.select {|k,v|h.values.max == v}.keys.sort

puts ret.join("\n")
