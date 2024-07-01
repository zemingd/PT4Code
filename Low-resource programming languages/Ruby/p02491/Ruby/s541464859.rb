a,b = gets.split(" ").map(&:to_i)
puts "#{a/b} #{a%b} #{"%.5f", a.to_f/b.to_f}"