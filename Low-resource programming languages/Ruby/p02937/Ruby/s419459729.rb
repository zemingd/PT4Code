s=gets.chomp
t=gets.chomp

h = {}
idxs = {}

i = 0
while i < s.length
  c = s[i]
  unless h[c]
    h[c] = []
    idxs[c] = 0
  end
  h[c] << i+1

  i += 1
end

i = 0
j = 0
t.each_char do |c|
  unless idxs[c]
    p -1
    exit 0
  end
  idx = h[c][idxs[c]]
  if i < idx
    i = idx
    idxs[c] = (idxs[c]+1) % h[c].length
  else
    j += 1
    i = idx
  end
  # p [c,j,i]
end

ret = j*s.length + i
p ret

