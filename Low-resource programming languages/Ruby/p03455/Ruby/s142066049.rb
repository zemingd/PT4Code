a, b = gets.strip.split.map(&:to_i)
p (a * b).odd? ? "Even" : "Odd"