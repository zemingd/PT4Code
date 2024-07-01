n = gets.to_i
l = n.times.map { gets.split }
puts l.map.with_index.sort_by { |(s, p), _| [s, -p.to_i] }.map { |_, i| i + 1 }  