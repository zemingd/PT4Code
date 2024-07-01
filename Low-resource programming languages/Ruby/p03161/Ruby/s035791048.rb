n, k = gets.split.map &:to_i
h = gets.split.map &:to_i

debug = ARGV.size > 0 and ARGV[0] === "--debug"

# $memo = {0 => 0}
# def solve(j)
# 	$memo[j] ||= (j-1).downto([0, j - $k].max).map { |i|
# 		($h[i] - $h[j]).abs + solve(i)
# 	}.min
# end

class RingBuf
	def initialize(size); @size = size; @array = []; @front = 0; @rear = 0; end
	def push(x); @array[@rear % @size] = x; @rear=(@rear+1) % @size; end
	def [](i); i = @rear + i if i < 0; @array[i % @size]; end
	def shift; x=@array[@front]; @front=(@front+1) % @size; end
end

# 1つ前〜kつ前までのk個のコストを保存しておく
costs = RingBuf.new(k)
costs.push 0

(1...n).each do |j|
	cost_min = [0, j-k].max.upto(j-1).map { |i|
		cost = costs[i] + (h[i] - h[j]).abs
		puts "    #{i+1} -> #{j+1}: #{cost}" if debug
		cost
	}.min
	costs.push cost_min

	puts "-> #{j+1}: #{cost_min}" if debug
end


p costs[-1]