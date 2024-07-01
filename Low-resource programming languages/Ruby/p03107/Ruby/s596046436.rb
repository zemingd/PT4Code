inputs = STDIN.readlines.map{|line|line.strip.split()}
line = inputs.shift

s = line[0].split("")
puts([s.count() - s.count("1"), s.count("1")].min * 2)
