d = gets.to_i
ans=["Christmas"]
(25-d).times do
	ans << "Eve"
end
puts ans.join(' ')