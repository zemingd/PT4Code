$<.each do |l|
  break if l.chomp == "0 0"
  puts l.split.sort.join(" ")
end