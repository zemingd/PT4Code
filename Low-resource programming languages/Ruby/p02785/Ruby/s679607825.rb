n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort_by{|e| -e}
min = [n, k].min - 1
h.slice!(0..min) if k != 0
puts h.inject(0, :+)