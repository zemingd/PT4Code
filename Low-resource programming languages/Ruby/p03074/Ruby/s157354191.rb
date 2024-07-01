n, k = gets.split.map(&:to_i)
s = gets.chomp.split("")
gr = []
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
 
cnt = sta = en = 0

if s[0] == "0"
  en = k * 2
  en = i if en > i
  max = gr[0..en].inject(:+)
  sta = 1
  sta = 0 if i == 0
end
while 1
  en = sta + 2 * k
  en = i if en > i
  cmp = gr[sta..en].inject(:+)
  max = cmp if max <= cmp
  if en == i
    break
  end
  sta += 2
end
puts max