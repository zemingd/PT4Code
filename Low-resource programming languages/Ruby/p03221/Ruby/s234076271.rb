N,M=gets.chomp.split(' ').map{|n| n.to_i}
P = Array.new(N)
Y = Array.new(N)
@h = {}
def add(p,y)
	@h[p].nil? ? @h[p] = [y] : @h[p] << y
end
for i in 0..(M-1)
	p,y=gets.chomp.split(' ').map{|n| n.to_i}
	add(p,y)
	P[i] = p
	Y[i] = y
end
@h = @h.map{|key,val| 
	hh = {}
	val.sort.each_with_index{|v,i|
		hh[v] = i
	}
	[key,hh]
}.to_h
for i in 0..(M-1)
	puts P[i].to_s.rjust(6, "0")+(@h[P[i]][Y[i]]+1).to_s.rjust(6, "0")
end
