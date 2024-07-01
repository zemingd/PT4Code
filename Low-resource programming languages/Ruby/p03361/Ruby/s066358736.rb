h, w = gets.strip.split.map(&:to_i)
pics = []
pics << '.' * (w + 2)
h.times do
  pics << '.' + gets.strip + '.'
end
pics << '.' * (w + 2)

ok = true
for i in 1..h
  for j in 1..w
    p = pics[i][j]
    next if p != '#'
    left = pics[i][j - 1]
    right = pics[i][j + 1]
    up = pics[i - 1][j]
    down = pics[i + 1][j]
    ok = false if left == '.' && right == '.' && up == '.' && down == '.'
    break 2
  end
end

puts ok ? 'Yes' : 'No'
