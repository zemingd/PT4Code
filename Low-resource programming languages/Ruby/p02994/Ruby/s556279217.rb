n, l = gets.split.map(&:to_i)
tastes = n.times.map{|i| l+i}
min = tastes.min_by{|a| a.abs}
puts (tastes.reduce(:+) - min)
