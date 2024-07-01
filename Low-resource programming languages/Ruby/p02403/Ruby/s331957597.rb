ARGF.each_line do |line|
  h, w = line.split.map(&:to_i)
    break if h == 0 && w == 0
  h.times { |i| puts "#{'#' * w}\n" }
  puts "\n"
end