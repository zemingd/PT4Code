numbers = gets.split(" ")
n = numbers[0].to_i
k = numbers[1].to_i

trees = []
n.times do
  trees.push(gets.to_i)
end

trees.sort!
trees.reverse!

diffs = []
(n - k + 1).times do |i|
  diffs.push trees[i] - trees[i + k - 1]
end

puts diffs.min