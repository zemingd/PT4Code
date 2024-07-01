def degrade(ai, bi, ci)
  res = []
  if ai > 0
    res.push [ai - 1, bi, ci]
  end
  if bi > 0
    res.push [ai, bi - 1, ci]
  end
  if ci > 0
    res.push [ai, bi, ci - 1]
  end
  return res
end

def score(path, a, b, c)
  ai, bi, ci = path
  a[ai] + b[bi] + c[ci]
end

def queue_push(queue, path, a, b, c)
  this_score = score(path, a, b, c)
  i = queue.index { |path2|
    score(path2, a, b, c) <= this_score
  }
  if i
    queue.insert(i, path)
  else
    queue.push(path)
  end
end

x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort
c = gets.split.map(&:to_i).sort

output = []
queue = [[a.size-1, b.size-1, c.size-1]]
seen = {}

until k == 0
  ai, bi, ci = queue.shift

  puts a[ai] + b[bi] + c[ci]
  k -= 1

  paths = degrade(ai,bi,ci).reject { |path| seen[path] }
  paths.each do |path|
    seen[path] = true
  end
  paths.each do |path|
    queue_push(queue, path, a, b, c)
  end
end
