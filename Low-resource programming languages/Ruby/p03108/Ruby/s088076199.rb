# https://atcoder.jp/contests/abc120/tasks/abc120_d

$memo = {}
$collections = {}
$color = 0

def actually_calculate start_node,  n, graph, visited, order
  visited[start_node] = true
  $memo[start_node] = true
  order << start_node
  n.times do |i|
    if graph[start_node][i] != 0
      if !visited[i]
        actually_calculate i, n, graph, visited, order
      end
    end
  end
end

def calculate_path s, n, graph
  visited = {}
  order = []
  actually_calculate(s, n, graph, visited, order)
  $collections[$color] = order.size
  $color += 1
end

def get_all_possible_paths n, graph
  n.times do |i|
    unless $memo[i]
      calculate_path(i,n,graph)
    end
  end
end


header = gets.strip.match(/(\d+)\s*(\d+)/)
n = header[1].to_i # islands
m = header[2].to_i # bridges
graph = Array.new(n) { Array.new(n) { 0 } }
collapse_order = []
m.times do
  bridge = gets.strip.match(/(\d+)\s*(\d+)/)
  a = bridge[1].to_i
  b = bridge[2].to_i
  graph[a-1][b-1] = 1
  graph[b-1][a-1] = 1
  collapse_order << [a-1, b-1]
end

collapse_order.each do |b|
  graph[b[0]][b[1]] = 0
  graph[b[1]][b[0]] = 0
  get_all_possible_paths n, graph
  if $collections.size == 1
    puts "0"
  else
    values = $collections.values
    sum = 0
    0.upto(values.size-2) do |i|
      sum += values[(i+1)..-1].map { |v| v * values[i] }.inject(:+)
    end
    puts sum
  end
  $memo = {}
  $collections = {}
  $color = 0
end

# https://medium.freecodecamp.org/just-change-the-signs-how-to-solve-a-competitive-programming-question-f9730e8f04a9
