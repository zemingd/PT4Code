R = $<.read.split
H = {}
[0,1].each {|i| H[R[i]] = R[i+2].to_i}
H[R[4]]-=1
puts H.values * ' '