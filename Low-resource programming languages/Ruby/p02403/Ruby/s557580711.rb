h, w = ARGF.gets.split.map(:&to_i) != [0, 0]
h.times { |i| puts "#{'#' * w}\n" }; puts "\n" end