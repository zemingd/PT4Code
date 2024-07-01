n, k = gets.split.map(&:to_i)
trees = []
n.times { trees << gets.to_i }
trees.sort!
mins = []
(n - k + 1).times do |start|
  mins << trees[start + k - 1] - trees[start]
end
puts mins.min
