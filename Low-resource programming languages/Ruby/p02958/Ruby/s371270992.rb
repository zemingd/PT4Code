N = gets.to_i
P = gets.split(' ').map(&:to_i)

cnt = 0
1.upto(N) do |i|
	if P[i - 1] != i
		cnt += 1
	end
end

if cnt <= 2
	puts 'YES'
else
	puts 'NO'
end