R, G, B = gets.chop.split.map(&:to_i)

n = R * 100 + G * 10 + B
puts n % 4 == 0 ? 'YES' : 'NO'