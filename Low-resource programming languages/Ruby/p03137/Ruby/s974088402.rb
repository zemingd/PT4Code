n, m = gets.chomp.split(" ").map(&:to_i)
xs = gets.chomp.split(" ").map(&:to_i).sort
diffs = []
i = 0
while i < (xs.size - 1) do
  diffs.push xs[i+1] - xs[i]
  i += 1
end

puts diffs.sort.reverse.drop(n-1).reduce(&:+) || 0
