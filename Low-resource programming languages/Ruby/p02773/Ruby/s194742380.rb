N=gets.to_i
ss=$<.read.split
h={}
ss.each do |s|
  h[s] ||= 0
  h[s] += 1
end

arr = h.sort
max = arr[-1][1]
ret = arr.select {|k,v|max == v}.map(&:first).sort

puts ret.join("\n")
