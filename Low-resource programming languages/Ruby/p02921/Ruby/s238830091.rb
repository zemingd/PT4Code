lines = $stdin.readlines
s1 = lines[0].chars
s2 = lines[1].chars
c = 0
for x in [0,1,2] do
  if s1[x] == s2[x] then
    c += 1
  end
end
p c