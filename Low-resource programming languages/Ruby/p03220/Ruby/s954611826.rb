N = gets.to_i
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i).map{|h| (1000 * T - 6 * h - 1000 * A).abs }
puts (1 .. N).min_by{|i| H[i - 1] }

