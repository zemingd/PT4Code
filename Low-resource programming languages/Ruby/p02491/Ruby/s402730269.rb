a, b = gets.chomp.split.map(&:to_i)
puts "#{a / b} #{a % b} #{a.to_f / b}"