n, m = gets.split.map(&:to_i)
pys = []
m.times do
  pys << gets.split.map(&:to_i)
end

res = pys.sort_by{|a,b|b}

count = 0

record = -1

i = 0

while i < m
	if record <= res[i][0]
		count += 1
		record = res[i][1]
	end
	i += 1
end

puts count