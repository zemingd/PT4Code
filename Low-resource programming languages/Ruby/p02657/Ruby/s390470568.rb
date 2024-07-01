args = gets

a, b = args.split(" ").map(&:to_i)

p a * b
