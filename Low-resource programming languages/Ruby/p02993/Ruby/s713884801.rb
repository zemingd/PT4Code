s=gets.chomp.split("").map(&:to_i)
flag=false
for i in 0..s.size-2
	if(s[i]==s[i+1])
		flag=true
		break
	end
end
print(flag ? "Bad" : "Good")