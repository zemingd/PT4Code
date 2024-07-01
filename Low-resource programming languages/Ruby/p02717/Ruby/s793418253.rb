a, b, c = gets.split.map(&:to_i)
a, b = b, a
a, c = c, a
puts "#{a} #{b} #{c}"
