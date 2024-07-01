n = gets.chomp.to_i
g = Array.new(3).map{Array.new(3,-1)}

n.times do |i|
	a = gets.chomp.to_i
	a.times do
		x, y = gets.chomp.split.map(&:to_i)
		g[i][x-1] = y
    end
end

ans = 0
[0, 1].repeated_permutation(n) do |s|
	ok = true
	n.times do |i|
		if s[i] == 1
            n.times do |j|
				if g[i][j] != -1
   				  ok = false if s[j] != g[i][j]
                end
            end
        end
    end
	if ok
		ans = s.count(1) if ans < s.count(1)
    end
end

puts ans
