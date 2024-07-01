n, k = gets.split.map(&:to_i)
s = gets.chomp.split("")
gr = []
grsum = []
jd = s[0]
cnt = i = max = 0
s.each do |c|
  if c == jd
    cnt += 1
  else
    jd = c
    gr[i] = cnt
    cnt = 1
    i += 1
  end
end
gr[i] = cnt

grsum[0] = 0
for j in 1..(i+1)
  grsum[j] = grsum[j-1] + gr[j-1]
end
 
cnt = sta = en = 0
 
if s[0] == "0"
  en = k * 2 - 1
  en = i if en > i
  max = grsum[en+1]
  sta = 1
  sta = 0 if i == 0
end
while 1
  en = sta + 2 * k
  en = i if en > i
  cmp = grsum[en+1] - grsum[sta]
  max = cmp if max < cmp
  if en == i
    break
  end
  sta += 2
end
puts max