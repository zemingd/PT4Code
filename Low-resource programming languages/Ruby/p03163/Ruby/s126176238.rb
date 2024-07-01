F =-> {gets.split.map &:to_i}
N,W = F[]
D = Hash.new 0
D[0] = 0
N.times {
	w,v = F[]
	D.keys.each {|i| W >= j=i+w and D[j] < x=D[i]+v and D[j]=x}
}
p D.values.max