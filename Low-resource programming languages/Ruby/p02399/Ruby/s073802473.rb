a,b = gets.chomp.split.map(&:to_i)
c = a / b
d = a % b
e = a.quo(b)
puts "#{c} #{d} #{e}"