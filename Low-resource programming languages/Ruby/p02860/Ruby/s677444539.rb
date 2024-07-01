line = readlines
len = line.length
i = 0

while i < len
    line[i] = line[i].chomp
    i += 1
end

N = line[0].to_i
S = line[1]

if N % 2 == 1 then
  print "No"
else
  half_point = N / 2
  s1 = S[0..half_point - 1]
  s2 = S[half_point..N-1]
  if s1 == s2 then
    print "Yes"
  else
    print "No"
  end
end