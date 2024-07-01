a, b = gets.split.map(&:to_i)
f = format('%.5f', a.to_f / b)
puts "#{a / b} #{a % b} #{f}"