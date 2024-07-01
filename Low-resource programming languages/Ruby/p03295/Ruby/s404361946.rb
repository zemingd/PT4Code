input = STDIN.read.split("\n")
nums = input[0].split(' ').map{|v| v.to_i}
conflicts = input.slice(1..-1).map{|c| c.split(' ').map{|v| v.to_i}}

bridges_num = nums[0] - 1
conflict_num = nums[1]

break_count = 0

while conflicts.length > 0
  counts = Array.new(bridges_num).map{0}

  conflicts.each_with_index do |v, conflict_i|
    start_bridge = v[0] - 1
    end_bridge = v[1] - 1

    i = start_bridge
    while i < end_bridge
      counts[i] = counts[i] + 1
      i = i + 1
    end
  end

  break_index = counts.index(counts.max)
  conflicts = conflicts.select{|v| !((v[0] - 1) <= break_index && (v[1] - 1) > break_index)}
  break_count = break_count + 1
end

print break_count