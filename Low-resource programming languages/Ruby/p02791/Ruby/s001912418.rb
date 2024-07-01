a = STDIN.read.lines[1].split.map{|v| v.to_i}; cnt = 0; min = a.max + 1
a.each do |v|
  min >= v && ( min = v and cnt += 1)
end
puts cnt