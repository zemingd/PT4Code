require 'set'
def combination(n,k)
  (n-k+1..n).inject(:*) / (1..k).inject(:*)
end

n,m = gets.strip.split.map(&:to_i)
abs = m.times.map{ gets.strip.split.map(&:to_i) }

island_groups = n.times.map{|i| [i] }
group_index = []
n.times do |i|
  group_index[i] = i
end

results = []
inconvenientness = combination(n,2)

abs.reverse.each do |ab|
  results.push inconvenientness
  a,b = ab.map{|i| i-1 }
  a_index = group_index[a]
  b_index = group_index[b]
  next if a_index == b_index
  if island_groups[a_index].size > island_groups[b_index].size
    parent_index = a_index
    parent_group = island_groups[a_index]
    child_group = island_groups[b_index]
  else
    parent_index = b_index
    parent_group = island_groups[b_index]
    child_group = island_groups[a_index]
  end
  inconvenientness -= parent_group.size * child_group.size
  parent_group.concat(child_group)
  child_group.each do |i|
    group_index[i] = parent_index
  end
end

puts results.reverse.join("\n")
