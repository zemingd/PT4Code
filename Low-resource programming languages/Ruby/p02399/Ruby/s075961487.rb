init = gets.split.map(&:to_i)
a,b  = init[0], init[1]
puts "#{a/b} #{(a % b)} #{a/b.to_f}"
