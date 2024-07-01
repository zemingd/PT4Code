i = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
list = []
for j in 0..(i[0] - 1) do
	list << c[j]
end

list = list.sort

count = 0
while count < i[1] do
	count += 1
	x = gets.split.map(&:to_i)
	for h in 0..(x[0] - 1) do
		
		if list[h].to_i < x[1]
			list[h] = x[1]
		end
	end
	list = list.sort
end

p list.inject(:+)