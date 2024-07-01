s=gets.chomp
t=gets.chomp

h = {}

i = 0
while i < s.length
  c = s[i]
  unless h[c]
    h[c] = []
  end
  h[c] << i+1

  i += 1
end

i = 0
j = 0
t.each_char do |c|
  unless h[c]
    p -1
    exit 0
  end

  idx = h[c].bsearch {|x| i < x}
  if idx
    i = idx
  else
    j += 1
    i = h[c][0]
  end
  # p [c,j,i]
end

ret = j*s.length + i
p ret

