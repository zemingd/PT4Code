#coding: utf-8
s=gets().chomp()
k=gets().chomp().to_i
i=0
while(i<s.length && k>0)
	if("z".ord - s[i].ord + 1<= k)
		k -= ("z".ord- s[i].ord + 1)
		s[i]="a"
	end
	i+=1
end
if(k != 0)
	k%=26
	s[s.length-1] = ((s[s.length-1].ord + k) <= "z".ord ? (s[s.length-1].ord + k).chr : (s[s.length-1].ord + k - 26).chr)
end
puts(s)
