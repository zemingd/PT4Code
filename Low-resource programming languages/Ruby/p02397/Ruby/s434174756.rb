while line = gets do
  puts(line.split.map(&:to_i).sort.join(" "))
end