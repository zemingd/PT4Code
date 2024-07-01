N, L = gets.split.map(&:to_i)
scores = N.times.map{|i| L + i }.sort_by{|i| i.abs }
puts scores[1,scores.size-1].inject(:+)