a, b, c = gets.split.map(&:to_i)
k = gets.to_i

sum = a+b+c+[a, b, c].max*(2**k-1)

puts sum