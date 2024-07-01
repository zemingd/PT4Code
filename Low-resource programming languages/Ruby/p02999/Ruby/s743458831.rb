N, X = gets.split.map!(&:to_i)
L = gets.split.to_a.map!(&:to_i)
cnt = 1
bound = 0
N.times do |i|
	bound += L[i]
	if bound <= X
		cnt += 1
	else
		break
	end
end
puts cnt