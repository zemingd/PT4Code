raw1 = gets.split(" ").map{|n|n.to_i}
largeh = raw1[0]
largew = raw1[1]
raw2 = gets.split(" ").map{|n|n.to_i}
smallh = raw2[0]
smallw = raw2[1]

ans = (largeh - smallh)*(largew-smallw)
puts ans.to_s()