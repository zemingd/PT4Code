while true
  h, w = ARGF.gets.split.map(:&to_i)
  break if [h, w] == [0, 0]
  h.times { |i| puts "#{'#' * w}\n" }; puts "\n" end
end