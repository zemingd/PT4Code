_, rates = readlines.map(&:chomp)
rates = rates.split(' ').map(&:to_i)
normal, genius = rates.partition {|v| v < 3200}
min_colors = [normal.map {|v| v / 400}.uniq.length, 1].max
max_colors = min_colors + genius.length
puts "#{min_colors} #{max_colors}"