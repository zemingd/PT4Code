k = gets.split.map(&:to_i).min
h = gets.split.map(&:to_i).sort.reverse
p h[k..-1].inject(:+).to_i
