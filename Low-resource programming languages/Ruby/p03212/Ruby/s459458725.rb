def dfs(n, upper, ans)
	return if n > upper
	ans.push(n) if n.to_s.include?('3') && n.to_s.include?('5') && n.to_s.include?('7')
	dfs(n*10+3, upper, ans)
	dfs(n*10+5, upper, ans)
	dfs(n*10+7, upper, ans)
end
ans=[]
dfs(0,s,ans)
puts ans.count