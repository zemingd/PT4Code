a = (0..2).map do
	gets.chomp.split(" ").map(&:to_i);
end
n = gets.to_i
b = n.times.map { gets.to_i }

existence = a.flatten.map { |el| b.include?(el) }

lines = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

result = lines.map do |l, m, n|
  existence[l] && existence[m] && existence[n]
end.reduce {|acc, el| acc || el }

puts result ? 'Yes' : 'No'
