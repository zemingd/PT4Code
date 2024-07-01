def degrade(indices, asize, bsize, csize)
  ai, bi, ci = indices
  res = []

  if ai < asize - 1
    res.push [ai + 1, bi, ci]
  end
  if bi < bsize - 1
    res.push [ai, bi + 1, ci]
  end
  if ci < csize - 1
    res.push [ai, bi, ci + 1]
  end
  return res
end

x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
b = gets.split.map(&:to_i).sort.reverse
c = gets.split.map(&:to_i).sort.reverse

output = []
queue = [[0, 0, 0]]
visited = {}

until k == 0
  ai, bi, ci = queue.shift

  puts a[ai] + b[bi] + c[ci]
  k -= 1
  visited[[ai, bi, ci]] = true

  paths = degrade([ai,bi,ci], a.size, b.size, c.size)
  paths.reject! { |path| visited[path] }
  queue = (queue | paths).sort_by { |ai, bi, ci|
    -(a[ai] + b[bi] + c[ci])
  }
end
