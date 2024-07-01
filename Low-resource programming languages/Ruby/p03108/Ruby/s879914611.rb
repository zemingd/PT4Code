require 'set'
def combination(n,k)
  (n-k+1..n).inject(:*) / (1..k).inject(:*)
end

n,m = gets.strip.split.map(&:to_i)
abs = m.times.map{ gets.strip.split.map(&:to_i) }

island_groups = n.times.map{|i| Set[i] }
group_index = []
n.times do |i|
  group_index[i] = i
end

results = []
inconvenientness = combination(n,2)

abs.reverse.each do |ab|
  results.push inconvenientness
  parent,child = ab.map{|i| i-1 }

  parent_index = group_index[parent]
  child_index = group_index[child]
  next if parent_index == child_index
  parent_group = island_groups[parent_index]
  child_group = island_groups[child_index]
  inconvenientness -= parent_group.size * child_group.size
  child_group.each do |i|
    parent_group.add i
    group_index[i] = parent_index
  end
end

puts results.reverse.join("\n")
