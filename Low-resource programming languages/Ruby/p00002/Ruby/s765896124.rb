$<.readlines.each do |l|
  puts Math.log10(l.split.map(&:to_i).sum).to_i + 1
end
