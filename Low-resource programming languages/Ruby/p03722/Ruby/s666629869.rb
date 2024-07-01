class Vertex
	attr_accessor :distance, :predecessor
	def initialize
		@distance = -2000 * 10 ** 9 - 1
		@predecessor = nil
	end
end

N, M = gets.split.map{|i|i.to_i}
V = Array.new(N){Vertex.new}
E = []
M.times{
	a, b, c = gets.split.map{|i|i.to_i}
	E << [a - 1, b - 1, c]
}
V[0].distance = 0

(N - 1).times{
	E.each{|e|
		u, v, w = e
		if V[v].distance < V[u].distance + w
			V[v].distance = V[u].distance + w
			V[v].predecessor = u
		end
	}
}

visited = Array.new(N){false}
e = N - 1
cycle = false
loop{
	unless V[e].predecessor
		break
	end
	if visited[e]
		cycle = true
		break
	end
	visited[e] = true
	e = V[e].predecessor
}

if cycle
	puts "inf"
else
	puts (V[-1].distance)
end
