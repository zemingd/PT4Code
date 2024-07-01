n = gets.to_i
a = gets.split.map(&:to_i)
puts n.times.map{|i| [a[i], i+1]}.sort_by(&:first).map(&:last).join(' ')
