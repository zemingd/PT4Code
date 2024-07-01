a,b = gets.chomp.split.map(&:to_i)
puts "#{a/b} #{a%b} #{sprintf( "%.5f", a/b.round(1) )}"