h, w = gets.chomp.split(" ").map(&:to_i)
queue = []
turn = Array.new(h * w, 0)
h.times do |i|
  l = gets.chomp
  j = 0
  while (j = l.index("#", j))
    queue << i * w + j
    turn[i * w + j] = 1
    j += 1
  end
end

cnt = 0
while (q = queue.shift)
  cnt = turn[q]
  i, j = q.divmod(w)
  if i > 0 && turn[(idx = (i - 1) * w + j)].zero?
    queue << idx
    turn[idx] = cnt + 1
  end
  if i < h - 1 && turn[(idx = (i + 1) * w + j)].zero?
    queue << idx
    turn[idx] = cnt + 1
  end
  if j > 0 && turn[(idx = i * w + (j - 1))].zero?
    queue << idx
    turn[idx] = cnt + 1
  end
  if j < w - 1 && turn[(idx = i * w + (j + 1))].zero?
    queue << idx
    turn[idx] = cnt + 1
  end
end

puts cnt - 1