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

cnt = en = 0
div = odd = 0
if s[0] == "1"
  div = 2 * k
  odd = 2 * k - 1
elsif s[0] == "0"
  div = 2 * k - 1
  odd = 2 * k
end

while 1
  if cnt % 2 == 0
    en = cnt + div
  else
    en = cnt + odd
  end
  if en > i
    en = i
  end
  cmp = gr[cnt..en].inject(:+)
  max = cmp if max <= cmp
  if en == i
    break
  end
cnt = en
end
puts max