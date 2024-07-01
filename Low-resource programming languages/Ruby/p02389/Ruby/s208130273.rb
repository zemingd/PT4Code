a, b= gets.chomp.split.map(&:to_i)
area = a * b
peri = a * 2 + b * 2

puts "#{area} #{peri}"
