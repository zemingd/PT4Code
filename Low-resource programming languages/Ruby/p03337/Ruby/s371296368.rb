def main(a, b)
  [a + b, a - b, a * b].max
end

a, b = gets.split(" ").map(&:to_i)
puts main(a, b)