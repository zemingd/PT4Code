a,b = gets.split(" ").map(&:to_i)
f = a/b.to_f
puts "#{a/b} #{a%b} #{f}"