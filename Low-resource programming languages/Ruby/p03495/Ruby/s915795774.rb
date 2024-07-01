n,k=gets.split.map{|e| e.to_i}
x=gets.split.map{|e| e.to_i}
hs=Hash.new(0)
x.each{|e|
	hs[e]+=1
}
arr=[]
hs.each{|k,v|
	arr<<[v,k]
}
arr.sort!
if arr.size<=k
	puts 0
else
	ans=0
	(0..(arr.size-k-1)).each{|i|
		ans+=arr[i][0]
	}
	puts ans
end