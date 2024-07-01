# frozen_string_literal: true

class Node
  attr_accessor :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end
end

N = gets.to_i
graph = Array.new(N + 1) { [] }

(N - 1).times do
  u, v, w = gets.split.map(&:to_i)
  graph[u] << Node.new(v, w)
  graph[v] << Node.new(u, w)
end

dist = Array.new(N + 1) { -1 }
dist[1] = 0
queue = [1]

while queue.any?
  v = queue.shift
  graph[v].each do |node|
    next if dist[node.name] != -1

    dist[node.name] = dist[v] + node.weight
    queue << node.name
  end
end

dist[1..-1].each do |i|
  puts i % 2
end