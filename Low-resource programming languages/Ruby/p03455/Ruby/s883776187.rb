a, b = gets.strip.split.map(&:to_i)
p (a * b).odd? ? "Odd" : "Even"