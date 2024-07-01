a, b, c = gets.split.map(&:to_i)
puts if c - a - b <= 0
  "No"
else
  (4 * a * b < (c - a - b) ** 2) ? "Yes" : "No"
end