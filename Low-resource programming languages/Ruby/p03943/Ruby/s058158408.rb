A, B, C = gets.split.map(&:to_i)
is_ok = [
  [A, B + C],
  [A + B, C],
  [A + C, B],
  [B, A + C],
  [B + C, A]
].any? { |a, b| a == b }
puts(is_ok ? 'Yes' : 'No')
