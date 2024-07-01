N=gets.to_i
ss=$<.read.split

h={}
max = 0
ss.each do |s|
  h[s] ||= 0
  h[s] += 1
  max = [max,h[s]].max
end

ret = h.select {|k,v|max == v}.keys.sort

puts ret.join("\n")
