a, b = gets.chomp.split(" ").map(&:to_i)

c = a*b

c.odd? ? print("Odd") : print("Even"