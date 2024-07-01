a,b = gets.chomp.split.map(&:to_i)
puts "#{a/b} #{a%b} #{sprintf("%.8f", a.to_f/b)}"