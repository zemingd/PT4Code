require 'set'
a=gets.split(" ").map{|e| e.to_i}
l=a[0]
r=a[1]

ans=2019
(l..([l+2019,r-1].min)).each{|e1|
	((e1+1)..([e1+4038,r].min)).each{|e2|
		ans=[ans,(e1*e2)%2019].min
	}
}
p ans