x, y, z, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
bs = gets.split.map(&:to_i).sort
cs = gets.split.map(&:to_i).sort.reverse

ds = []
for a in as
  for b in bs
    ds << a+b
  end
end
ds = ds.sort.reverse
d_length = ds.length

is = Array.new(z, 0)

p cs[0]+ds[0]
is[0] = 1

(k-1).times do
  max = 0
  for ci in 0...z
    next if is[ci] == d_length
	tmp = cs[ci]+ds[is[ci]]
    if max < tmp
      max = tmp
      max_i = ci
    end
    if ci == z-1 or is[ci] == is[ci+1]
      break
    end
  end
  p max
  is[max_i] += 1
end
