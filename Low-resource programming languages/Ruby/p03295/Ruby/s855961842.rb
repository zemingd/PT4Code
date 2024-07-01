input = STDIN.read.split("\n")
nums = input[0].split(' ').map{|v| v.to_i}
conflicts = input.slice(1..-1).map{|c| c.split(' ').map{|v| v.to_i}}

bridges_num = nums[0] - 1
conflict_num = nums[1]

break_count = 0

while conflicts.length > 0
  counts = Array.new(bridges_num).map{0}
  max_conflicts = 0
  max_index = 0

  conflicts.each do |v|
    start_bridge = v[0] - 1
    end_bridge = v[1] - 1

    i = start_bridge
    while i < end_bridge
      ct = counts[i] + 1
      if ct > max_conflicts
        max_conflicts = ct
        max_index = i
      end
      counts[i] = ct
      i = i + 1
    end
  end

  conflicts = conflicts.select{|v| !((v[0] - 1) <= max_index && (v[1] - 1) > max_index)}
  break_count = break_count + 1
end

print break_count