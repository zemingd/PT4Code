N,M=gets.split.map(&:to_i)
P=[]
for i in 1..M
	P<<gets.split.map(&:to_i)
end
Q=Array.new(N).map{[]}
P.each{|e|
	Q[e[0]-1]<<e
}
Q.each{|e|
	e.sort_by!{|f|f[1]}
	e.each_with_index{|f,i|f<<i}
}
P.each{|e|
	puts ("%06d"%e[0].to_s)+("%06d"%(e[2]+1).to_s)
}