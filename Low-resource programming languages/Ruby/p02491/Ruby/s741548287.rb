x, y = gets.chomp.split(' ').map { |s| s.to_i }

puts "#{x / y} #{x % y} #{x.to_f / y}"