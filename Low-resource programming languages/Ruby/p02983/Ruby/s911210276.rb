L, R = gets.split.map(&:to_i)

l = L
lc = 0
r = []
while true
  if l > R
    break
  end

  if lc > 2019
    break
  end

  r << (l * (l + 1)) % 2019

  l += 1
  lc += 1
end

p r.min