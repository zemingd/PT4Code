N = gets.to_i
ds = gets.split.map(&:to_i)

ret = 0
i = 0
while i < N
  j = i+1
  while j < N
    ret += ds[i] * ds[j]
    j += 1
  end
  i += 1
end

p ret
