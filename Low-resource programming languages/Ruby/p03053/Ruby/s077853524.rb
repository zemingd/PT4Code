h, w = gets.strip.split(" ").map(&:to_i)
hw = Array.new(h) { gets.strip.split("") }

queue = []

0.upto(h - 1) do |i|
  0.upto(w - 1) do |j|
    queue << [i, j, 1] if hw[i][j] == "#"
  end
end

ans = 0
until queue.empty? do
  i, j, c = queue.shift
  q = queue.count
 
  if i > 0 && hw[i - 1][j] == "."
    hw[i - 1][j] = "#"
    queue << [i - 1, j, c + 1]
  end

  if j > 0 && hw[i][j - 1] == "."
    hw[i][j - 1] = "#"
    queue << [i, j- 1, c + 1]
  end

  if i < h - 1 && hw[i + 1][j] == "."
    hw[i + 1][j] = "#"
    queue << [i + 1, j, c + 1]
  end

  if j < w - 1 && hw[i][j + 1] == "."
    hw[i][j + 1] = "#"
    queue << [i, j + 1, c + 1]
  end

  ans = c if q != queue.size && ans < c
end

puts ans
