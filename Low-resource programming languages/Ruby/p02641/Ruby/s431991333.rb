x, n = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
puts ([*-5..105] - p).min{|a, b| (x - a).abs <=> (x - b).abs}