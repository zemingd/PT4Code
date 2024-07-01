while (line=gets)!="0 0"
  puts line.split.map(&:to_i).sort.join(" ")
end