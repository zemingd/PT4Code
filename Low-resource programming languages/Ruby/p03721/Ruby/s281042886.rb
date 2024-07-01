N, K = gets.split.map(&:to_i)

array = Hash.new(0)

N.times do
	a, b = gets.split
	array[a.to_s] += b.to_i
end

bb = 0
array.to_a.each do |a, b|
	bb += b
	
	if K <= bb
		puts a.to_s
		break
	end
end