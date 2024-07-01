n, q = gets.chomp.split.map(&:to_i)

children = Array.new(n+1).map{[]}

(n-1).times do
  a, b = gets.chomp.split.map(&:to_i)
  children[a] << b
end

scores = Array.new(n+1).map{0}

q.times do
  point, x = gets.chomp.split.map(&:to_i)
  scores[point] += x
end

queue = [1]
while(queue.size > 0) do
  i = queue.shift
  
  children[i].each do |child|
    queue.push(child)
    scores[child] += scores[i]
  end
end

puts scores[1..-1].join(" ")
