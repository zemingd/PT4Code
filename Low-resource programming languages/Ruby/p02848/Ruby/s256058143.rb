n,s=$<.read.split
puts s.chars.map{|c|n.to_i.times{c=c.succ[0]};c}*""