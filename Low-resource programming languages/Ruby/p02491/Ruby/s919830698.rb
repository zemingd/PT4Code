a,b = gets.split.map(&:to_i);
f = a.to_f / b.to_f
puts "#{a/b} #{a%b} #{f}"