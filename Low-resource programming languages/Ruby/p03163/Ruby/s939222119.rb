F =-> {gets.split.map &:to_i}
N,W = F[]
D = [0]
N.times {
	w,v = F[]
    W.downto(w) {|i| x=D[i-w] and (D[i]||0) < x+=v and D[i]=x}
}
p D.map{_1||0}.max