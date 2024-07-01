s,t = gets.chomp.split(' ').map(&:to_s)
a,b = gets.chomp.split(' ').map(&:to_i)
u = gets.to_s

ans = []

if u == s
	ans = (a - 1),b
else
	ans =  a,(b - 1)
end

print ans.join(' ')