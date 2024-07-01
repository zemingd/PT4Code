N, L = gets.split.map(&:to_i)

t = ->(i){L + i - 1}
puts (1 .. N).map{|i| t[i]}.inject(:+) - t[(1 .. N).min_by{|i| t[i].abs}]