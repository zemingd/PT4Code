a, b, c = gets.split.map(&:to_i)
result = [
  [a, (b + c)],
  [a, (b - c).abs],
  [b, (a + c)],
  [b, (a - c).abs],
  [c, (a + b)],
  [c, (a - b).abs]
].any? { |o, t| o == t }
puts(result ? 'Yes' : 'No')