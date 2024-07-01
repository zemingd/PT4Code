a, b = gets.split(' ').map(&:to_i)
result = (a * b) % 2 === 0 ? "Even": "Odd"
puts result