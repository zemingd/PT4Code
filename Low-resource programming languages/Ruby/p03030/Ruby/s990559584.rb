n = gets.to_i
a = Array.new(n) { gets.split }
 
p *a.each_with_index.sort_by { |(s, p), _i| [s, -p.to_i] }.map { |*_, i| i + 1 }