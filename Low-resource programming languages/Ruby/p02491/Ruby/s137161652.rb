a, b = gets.chomp.split.map(&:to_i)
puts "#{a.div b} #{a.modulo b} #{sprintf('%.5f', a.fdiv(b))}"