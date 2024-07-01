a, b = gets.split.map(&:to_i)
puts "#{a/b} #{a%b} #{(a.to_d/b.to_d).floor(5).to_f}"