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

ans = cs[0]+ds[0]
anss = [ans]
is[0] = 1

(k-1).times do
  max = 0
  pre_is = -1
  for ci in 0...z
    next if is[ci] == d_length
    if is[ci] == pre_is
      break if is[ci] == is.min
      next
    end
	tmp = cs[ci]+ds[is[ci]]
    pre_is = is[ci]
    if max <= tmp
      max = tmp
      max_i = ci
    end
  end
  anss << max
  is[max_i] += 1
end

puts anss
