# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
graph = Array.new(n) { [] }

m.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  graph[a] << b
  graph[b] << a
end

puts graph.map(&:size)