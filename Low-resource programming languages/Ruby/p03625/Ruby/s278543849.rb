include Math

if __FILE__==$0
	inf=Float::INFINITY
	
	readln_i=lambda{|dl|gets.chomp.split(dl).map(&:to_i)}
	read_i=lambda{gets.chomp.to_i}
	readln_s=lambda{|dl|fp.gets.chomp.split(dl)}
	read_s=lambda{fp.gets.chomp}
	
	n=read_i[]
	num=readln_i[" "]
	list={}
	
	for x in num
		if list.has_key?(x)
			list[x]+=1
		else
			list[x]=1
		end
	end
	
	edge=Array.new(0){0}
	
	for k in list.keys
		if list[k]>=2
			edge.push(k)
		end
	end
	
	if edge.length>2
		p edge[edge.length-1]*edge[edge.length-2]
	else
		p 0
	end
end