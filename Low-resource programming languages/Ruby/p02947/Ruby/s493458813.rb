n=gets.to_i
s=[]
n.times do|i|
	s[i]=gets.chomp.split("").sort!
end
cnt=0
n.times do|i|
	for j in i+1..n-1
		cnt+=1 if(s[i]==s[j])
	end
end
p cnt
