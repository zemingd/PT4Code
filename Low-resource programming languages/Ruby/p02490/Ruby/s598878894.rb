$<.each do |l|
  break if l.chomp == "0 0"
  puts l.split.map(&:to_i).sort.join(" ")
end