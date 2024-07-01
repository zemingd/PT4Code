input = STDIN.read.split("\n")
conflicts = input.slice(1..-1).map{|c| c.split(' ').map{|v| v.to_i}}

conflicts.sort_by!{|v| v[1]}

breaks = 0
prev_break = nil

conflicts.each do |c|
  breaking_bridge = c[1] - 1

  if prev_break == nil || prev_break < c[0]
    prev_break = breaking_bridge
    breaks = breaks + 1
  end
end