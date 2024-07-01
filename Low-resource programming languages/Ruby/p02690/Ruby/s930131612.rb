x = gets.to_i
a = (x**0.2).round**5
b = (a-x).abs ** 0.2
b *= -1 if x > a
p "#{a} #{b}"