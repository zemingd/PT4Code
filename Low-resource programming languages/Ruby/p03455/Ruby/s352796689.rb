a, b = gets.split.map(&:to_i)
p (a * b).odd? ? "Odd" : "Even"