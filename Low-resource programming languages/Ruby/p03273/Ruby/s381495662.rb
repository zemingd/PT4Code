h, w = gets.split.map(&:to_i)
a = h.times.map { gets.chomp }
(w - 1).downto(0) do |j|
  flag = false
  for i in 0...h do
    if a[i][j] == "#"
      flag = true
      break
    end
  end
  if !flag
    for i in 0...h do
      a[i].slice!(j)
    end
  end
end
for i in 0...h do
  puts a[i] if a[i].include?("#")
end
