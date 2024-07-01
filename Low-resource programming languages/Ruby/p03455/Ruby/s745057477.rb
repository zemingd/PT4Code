a, b = gets.split(' ').map(&:to_i)
(a*b).even? ? "Even" : "Odd"