N = gets.to_i
r = N

def calc(r, i)
  if r < 6
    return [r, i]
  end

  j = 0
  v = 1
  while r >= v
    j += 1
    v = 6 ** j
  end

  result = []
  result << calc(r - 6 ** (j - 1), i + 1)

  if r >= 9
    j = 0
    v = 1
    while r >= v
      j += 1
      v = 9 ** j
    end

    result << calc(r - 9 ** (j - 1), i + 1)
  end

  result
end

d = calc(r, 0).flatten
result = []
0.step(d.size - 1, 2) do |i|
  result << d[i + 1] + d[i]
end
p result.min