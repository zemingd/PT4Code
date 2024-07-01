n, q = gets.chomp.split(' ').map(&:to_i)

graph = Array.new(n, [])
(n - 1).times do
  a, b = gets.chomp.split(' ').map(&:to_i)
  graph[a - 1] += [b - 1]
end

scores = Array.new(n, 0)
q.times do
  p_, x = gets.chomp.split(' ').map(&:to_i)
  scores[p_ - 1] += x
end

answers = Array.new(n, 0)
n.times do |i|
  score = scores[i]
  answers[i] += score
  children = graph[i]
  children.each do |child|
    scores[child] += score
  end
end

puts answers.join(' ')
