n, q = gets.chomp.split.map(&:to_i)

children = Array.new(n+1).map{[]}
parents = Array.new(n+1).map{[]}
scores = Array.new(n+1).map{0}

(n-1).times do
  a, b = gets.chomp.split.map(&:to_i)
  children[a] << b
  parents[a].each do |parent|
    children[parent] << b
    parents[b] << parent
  end
  parents[b] << a
end

q.times do
  point, x = gets.chomp.split.map(&:to_i)
  scores[point] += x
  children[point].each do |child|
    scores[child] += x
  end
end

puts "parents: #{parents}"
puts "children: #{children}"
puts scores[1..-1].join(" ")
