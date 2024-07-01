N,D = gets.split(' ').map(&:to_i)

x = Array.new
N.times do |i|
	x[i] = gets.split(' ').map(&:to_i)
end

cnt = 0

(0..N-1).each do |i|
	(i+1..N-1).each do |j|
		sqdis = (0..D-1).map{|k| (x[i][k] - x[j][k]) ** 2}.inject(:+)
		if sqdis == (Math.sqrt(sqdis).round) ** 2
			cnt += 1
		end
	end
end

p cnt