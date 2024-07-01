n=gets.to_i
s=[]
n.times do|i|
	s[i]=gets.chomp.split("").sort!
end
cnt=0
def cal(n)
	val=0
	(n+1).times do|i|
		val+=i
	end
	return val
end
n.times do|i|
	delcnt=0
	j=i+1
	while(j<n)
		if(s[i]==s[j])
			s.delete_at(j)
			n-=1
			i-=1
			delcnt+=1
		end
		j+=1
	end
	cnt+=cal(delcnt)
	break if(n<0)
end
p cnt
