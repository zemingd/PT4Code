a = gets.chomp
b = a.scan(/\+/).count
c = a.scan(/\-/).count
puts b - c
