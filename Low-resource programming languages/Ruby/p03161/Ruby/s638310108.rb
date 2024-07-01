n, k = STDIN.gets.split.map(&:to_i)
h = STDIN.gets.split.map(&:to_i)

tiles = Array.new(n)
tiles[0] = 0

for i in 1...n do
  tiles[i] = tiles[i - 1] + (h[i] - h[i - 1]).abs

  for j in 1..k do
    break if i - j < 0

    if tiles[i] > tiles[i - j] + (h[i] - h[i - j]).abs
      tiles[i] = tiles[i - j] + (h[i] - h[i - j]).abs
    end
  end
end

puts tiles[-1]
