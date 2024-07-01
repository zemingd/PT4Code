require 'set'
a=gets.split(" ").map{|e| e.to_i}
ks=Set.new((1..1000).map{|e| e*e})
arr=[]
ans=0
a[0].times{|i|
	arr<<(gets.split(" ").map{|e| e.to_i})
	(arr.size-1).times{|j|
		# arr.size
		l=0
		a[1].times{|k|
			l+=(arr[i][k]-arr[j][k])**2
		}
		if ks.member?(l)==true
			ans+=1
		end
	}
}
p ans