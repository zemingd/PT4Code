inputs = STDIN.readlines.map{|line|line.strip.split()}
line = inputs.shift

a = line[0].to_i
b = line[1].to_i
c = line[2].to_i

puts([b / a, c].min)
