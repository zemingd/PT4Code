a, b = gets.split.map!(&:to_i)
puts("#{a/b} #{a%b} #{format("%.5f", a / b)}")