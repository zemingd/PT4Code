n = gets.to_i
a = gets.split
b = []
(n - 1).step(0, -2){|i|
    b << a[i]
}
(n % 2).step(n - 1, 2){|i|
    b << a[i]
}
puts b * " "
