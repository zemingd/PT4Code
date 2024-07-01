n, m = gets.chomp.split.map(&:to_i)
road = Array.new(n, 0)
m.times do
	a, b = gets.chomp.split.map(&:to_i)
        #puts a, b
	road[b - 1] =road[b - 1] + 1
        road[a - 1] =road[a - 1] + 1
end
puts road