str = gets.split
H,W = str[0].to_i, str[1].to_i
pmax = Array.new(W,0)
nmax = Array.new(W,0)
now = Array.new(W,0)
rnow = Array.new(W,0)
max = 0

i = 0
j = 0
k = 0
l = 0
while i < H
  str = gets.chomp
  j = 0
  k = 0
  l = 0
  while j < W
    if str[j] == "."
      k += 1
      rnow[j] += 1
      if j == W-1
        for x in l...l+k
          now[x] = k
        end
      end
    else
      for x in l...l+k
        now[x] = k
      end
      now[j] = 0
      l = j+1
      k = 0
      pmax[j] = pmax[j] > nmax[j] + rnow[j] ? pmax[j] : nmax[j] + rnow[j]
      nmax[j] = 0
      rnow[j] = 0
    end
    j += 1
  end
  j = 0
  while j < W
    nmax[j] = now[j] > nmax[j] ? now[j] : nmax[j]
    j += 1
  end
  i += 1
  p pmax,nmax,now,rnow
end

j = 0
while j < W
  pmax[j] = pmax[j] > nmax[j] + rnow[j] ? pmax[j] : nmax[j] + rnow[j]
  max = pmax[j] > max ? pmax[j] : max
  j += 1
end

puts max-1