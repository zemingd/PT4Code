#!/usr/bin/env ruby

def read_input()
  edge_num = gets(chomp: true).to_i
  edges = []
  graph = Hash.new { [] }
  (1...edge_num).each do
    edge = gets(chomp: true).split()
    edges << edge
    a,b = edge
    if (!graph.has_key?(a))
      graph[a] = []
    end
    graph[a] << b
  end
  [edge_num, edges, graph]
end

def solve(graph, node, base_color, color_edge, max)
  children = graph[node]
  max = children.length if (children.length > max)
  color = 0
  children.each { |child|
    color += 1
    color += 1 if (color == base_color)
    color_edge[node] = {} if (color_edge[node].nil?)
    color_edge[node][child] = color
    max = solve(graph, child, color, color_edge, max)
  }
  max
end

edge_num, edges, graph = read_input

color_edge = {}
max = solve(graph, edges[0][0], nil, color_edge, -1)

puts max+1
edges.each do |a,b|
  puts color_edge[a][b]
end
