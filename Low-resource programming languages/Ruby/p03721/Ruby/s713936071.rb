N, K = gets.split.map(&:to_i)

array = Hash.new(0)

N.times do
	a, b = gets.split
	array[a] += b.to_i
end

bb = 0
array.to_a.sort {|(a1, b1), (a2, b2)| a1.to_i <=> a2.to_i}.each do |a, b|
	bb += b
	
	if K <= bb
		puts a
		break
	end
end