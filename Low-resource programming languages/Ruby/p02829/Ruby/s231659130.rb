answer = [1, 2, 3]
wrong  = readlines.map(&:to_i)
puts (answer - wrong)[0].to_i
