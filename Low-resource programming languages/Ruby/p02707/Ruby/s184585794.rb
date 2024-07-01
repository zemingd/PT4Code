N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

map = 0.upto(N-1).map { [] } # map
0.upto(N-2).each do |i|
  parent = A[i] - 1
  child = i + 1
  map[parent] ||= []
  map[parent] << child
end

0.upto(N-1).each do |i|
  p map[i].size
end
