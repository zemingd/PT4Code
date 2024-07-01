a = Array.new(3) { gets.split.map(&:to_i) }.flatten
n, *b = $stdin.read.split.map(&:to_i)

yn = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8],
  [0, 3, 6], [1, 4, 7], [2, 5, 8],
  [0, 4, 8], [2, 4, 6]
].any? { |ii| (a.values_at(*ii) - b).empty? }

puts yn ? :Yes : :No
