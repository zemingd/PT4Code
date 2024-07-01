input = gets

a, b = input.split.map(&:to_i)

puts "#{a/b} #{a%b} #{sprintf("%.5f", a/b.to_f.round(5))}"