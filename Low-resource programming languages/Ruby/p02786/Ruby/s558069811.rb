h = gets.to_i
e =  Math.log2(h)
e += 1 if h < 10**12
puts 2 ** e.ceil - 1

