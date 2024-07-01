n = gets.chomp
pn = gets.split.map(&:to_i)
p1 = pn.shift
p2 = pn.shift
puts pn.inject([p1>p2,p2,0]){|sum,p|[(sum[1]>p),p,((sum[0]==(sum[1]>p)) ? sum[2]+1 : sum[2])]}[2]