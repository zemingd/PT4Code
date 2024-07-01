gets
line = gets
a = line.split.map(&:to_i)
puts a.reverse.join("\s")