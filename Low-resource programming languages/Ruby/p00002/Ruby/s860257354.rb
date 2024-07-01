readlines.each do |line|
  1 + line.split.map(&:to_i).sum / 10
end

