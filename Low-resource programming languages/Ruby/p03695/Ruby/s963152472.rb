_, rates = readlines.map(&:chomp)
rates = rates.split(' ').map(&:to_i)
normal, genius = rates.partition {|v| v < 3200}
normal_colors = normal.map {|v| v / 400}.uniq.length
genius_colors = [normal_colors + genius.length, 8].min
puts "#{normal_colors} #{genius_colors}"