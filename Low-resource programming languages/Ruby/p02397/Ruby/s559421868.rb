while line = gets do
  break if line == "0 0"
  puts line.split(" ").sort.join(" ")
end