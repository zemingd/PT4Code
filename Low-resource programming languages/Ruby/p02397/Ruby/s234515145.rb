while line = gets
  puts line.split.map(&:to_i).sort.join(" ")
end