def expand(node, from)
  @done[node] = true
  @values[node] = @values[from] + @adds[node]
  @hash[node].each do |n|
    next if n == from
    expand(n, node)
  end
end

lines = readlines.map { |line| line.chomp.split.map(&:to_i) }

N, Q = lines.shift
edges = lines[0...N - 1]
querys = lines[N - 1..-1]

@values = [0] * (N + 1)
@done = [false] * (N + 1)
@hash = Hash.new([])
edges.each do |e|
  @hash[e[0]] = @hash[e[0]] + [e[1]]
  @hash[e[1]] = @hash[e[1]] + [e[0]]
end
@adds = [0] * (N + 1)
querys.each do |q|
  @adds[q[0]] += q[1]
end

expand(1, 0)

@values.shift
puts @values.join(" ")
