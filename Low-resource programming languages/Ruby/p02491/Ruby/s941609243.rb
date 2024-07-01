a, b = gets.split.map(&:to_i)
puts "#{a / b} #{a % b} #{sprintf("%.5f", a).to_f / sprintf("%.5f", b).to_f}"