arr = gets.split.map(&:to_i)
ten = gets.split.map(&:to_i)
ans = ten.dup
load = []
h1 = 0
h2 = 0

arr[1].times do |i|
	tmp = gets.split.map(&:to_i)
	load << tmp
end
load = load.uniq
num = load.length

num.times do |i|
	h1 = ten[load[i][0]-1]
	h2 = ten[load[i][1]-1]
	if h1 > h2
		ans[load[i][1]-1] = 0
	elsif h2 > h1
		ans[load[i][0]-1] = 0
	else
		ans[load[i][1]-1] = 0
		ans[load[i][0]-1] = 0
	end
end

ans.delete(0)
p ans.length