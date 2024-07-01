N, M = gets.split(' ').map(&:to_i)
wars = []
M.times do
	wars.push(gets.split(' ').map(&:to_i))
end
wars.sort_by!{|a,b| b}

r = wars[0][1]
cnt = 1
1.upto(M - 1) do |i|
	l = wars[i][0]
	if l >= r
		cnt += 1
		r = wars[i][1]
	end
end

puts cnt