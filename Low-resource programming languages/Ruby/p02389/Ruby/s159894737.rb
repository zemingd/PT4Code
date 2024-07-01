c = gets.chomp.split.map(&:to_i)
a = c[0]
b = c[1]
puts "#{a*b} #{a*2+b*2}"