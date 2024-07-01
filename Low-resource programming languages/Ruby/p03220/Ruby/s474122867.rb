N = gets.to_i
T, A = gets.split.map(&:to_i)
diff = gets.split.map(&:to_i).map{|h| (T-h*0.006-A).abs}
puts N.times.min_by{|i| diff[i]} + 1