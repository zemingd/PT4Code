gets.to_i
edges = gets.split.map(&:to_i)
puts edges.sum > edges.max*2 ? "Yes" : "No"  