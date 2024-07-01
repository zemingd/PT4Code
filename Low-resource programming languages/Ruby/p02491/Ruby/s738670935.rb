x, y = gets.chomp.split(' ').map { |s| s.to_i }

puts "#{x / y} #{x % y} #{sprintf("%10.10f", x.to_f / y)}"