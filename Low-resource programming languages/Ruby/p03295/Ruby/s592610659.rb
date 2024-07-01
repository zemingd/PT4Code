input = STDIN.read.split("\n")
nums = input[0].split(' ').map{|v| v.to_i}
conflicts = input.slice(1..-1).map{|c| c.split(' ').map{|v| v.to_i}}

bridges_num = nums[0] - 1
conflict_num = nums[1]

table = Array.new(conflict_num).map{Array.new(bridges_num)}

conflicts.each_with_index do |v, conflict_i|
  i = v[0]
  while i < v[1]
    table[conflict_i][i-1] = true
    i = i + 1
  end
end

broken_count = 0

while table.length > 0
  bridges_conflicts = Array.new(bridges_num)
  bridges_conflicts.each_with_index do |v, bridge_i|
    bridges_conflicts[bridge_i] = table.select{|t| t[bridge_i] == true}.length
  end

  max_bridge_index = bridges_conflicts.index(bridges_conflicts.max)
  table = table.select{|conflict| conflict[max_bridge_index] != true }
  broken_count = broken_count + 1
end

print broken_count