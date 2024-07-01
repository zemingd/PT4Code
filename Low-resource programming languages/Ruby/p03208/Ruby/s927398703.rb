numbers = gets.split(" ")
n = numbers[0].to_i
k = numbers[1].to_i

trees = []
n.times do
  trees.push(gets.to_i)
end

trees.sort!
trees.reverse!
puts trees[0] - trees[k - 1]