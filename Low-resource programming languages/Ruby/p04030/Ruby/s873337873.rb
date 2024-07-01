#coding: utf-8

s=gets.chomp
ans=Array.new(0)
i=0
while(i<s.length)
	unless(s[i]=='B')
		ans << s[i]
	else
		ans.delete_at(-1)
	end
	i+=1
end
i=0
while(i<ans.length)
	print(ans[i])
	i+=1
end
	print("\n")
