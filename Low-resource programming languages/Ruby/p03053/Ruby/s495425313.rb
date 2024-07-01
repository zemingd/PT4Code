h, w = gets.chomp.split(" ").map(&:to_i)
a = ""
h.times { a.concat(gets.chomp) }

require "set"

indexes = Set.new((0...(h * w)).to_a)
queue = []
idx = 0
while (idx = a.index("#", idx))
  indexes.delete(idx)
  i, j = idx.divmod(w)
  queue << (i - 1) * w + j if i > 0
  queue << (i + 1) * w + j if i < h - 1
  queue << i * w + (j - 1) if j > 0
  queue << i * w + (j + 1) if j < w - 1
  idx += 1
end

turn = Hash.new(0)
cnt = 0
while (q = queue.shift)
  cnt = turn[q]
  i, j = q.divmod(w)
  if i > 0 && indexes.include?(idx = (i - 1) * w + j)
    queue << idx
    indexes.delete(idx)
    turn[idx] = cnt + 1
  end
  if i < h - 1 && indexes.include?(idx = (i + 1) * w + j)
    queue << idx
    indexes.delete(idx)
    turn[idx] = cnt + 1
  end
  if j > 0 && indexes.include?(idx = i * w + (j - 1))
    queue << idx
    indexes.delete(idx)
    turn[idx] = cnt + 1
  end
  if j < w - 1 && indexes.include?(idx = i * w + (j + 1))
    queue << idx
    indexes.delete(idx)
    turn[idx] = cnt + 1
  end
end

puts cnt