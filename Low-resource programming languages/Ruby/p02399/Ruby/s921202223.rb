a = gets.split(' ')
a[0], a[1] = a[0].to_i, a[1].to_i
b = [a[0].to_f, a[1].to_f]
puts("#{a[0] / a[1]} #{a[0] % a[1]} #{b[0] / b[1]}")

