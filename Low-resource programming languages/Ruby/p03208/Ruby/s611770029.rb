# comment test comment test
# comment test comment test
# comment test comment test
# comment test comment test
# comment test comment test
n, k = gets.split.map(&:to_i)
trees = []
n.times do
  trees << gets.to_i
end
trees.sort!
ans = trees[-1] - trees[0]
n.times do |i|
  break if trees[i+k-1].nil?
  diff = trees[i+k-1] - trees[i]
  ans = [ans, diff].min
end

puts ans