_,*S = $<.read.split
H = Hash.new 0
S.each {|s| H[s]+=1}
K = H.keys.sort_by{|k| [-H[k],k]}
puts K.select {|k| H[k]==H[K[0]]}