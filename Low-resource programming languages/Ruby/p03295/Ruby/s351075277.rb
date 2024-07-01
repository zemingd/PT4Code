(n,m),*a=$<.map{|e|e.split.map &:to_i}
a.sort_by!{|x,y|y}
r=tail=0
a.each{|x,y|
	if x>tail
		r+=1
		tail=y-1
	end
}
p r