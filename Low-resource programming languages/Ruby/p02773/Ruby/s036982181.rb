n = gets.chop.to_i
s = []
n.times { s << gets.chomp.to_s }
hash = s.each_with_object(Hash.new(0)){|v,o| o[v]+=1}
max = hash.values.max
bests = hash.select{|k,v| v == max}
puts bests.keys.sort