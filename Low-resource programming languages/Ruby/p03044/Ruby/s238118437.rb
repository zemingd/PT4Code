vertex = gets.chomp.to_i
tree = []
(vertex - 1).times.each do |a|
  b, c, d = gets.chomp.split(' ').map(&:to_i)
  tree << [b, c, d]
end

collect_answer = nil
numbers = [0, 1]
numbers.repeated_permutation(vertex) do |combi|
  answer = true
  tree.each do |u, v, w|
    if ((combi[u - 1] == 0) && (combi[v - 1] == 0)) || ((combi[u - 1] == 1) && (combi[v - 1] == 1)) then
      if w.odd? then
        answer = false
      end
    end
  end
  if answer
    collect_answer = combi
    break
  end
end

puts collect_answer