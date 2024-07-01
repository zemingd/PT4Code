a = gets.split(' ').map(&:to_i)

x1 = (a[0] + a[1]) * 2
x2 = a[0] * a[1]
puts "#{x2} #{x1}"
