n = gets.chop.to_i
str = gets

idx = 0
before = 0
ret = 1
num_cnt = 0
chs = ""
while true do
  ch = str[idx]
  if ch.match(/[0-9]/)
    chs = chs + ch
  else
    after = chs.to_i
    chs = ""
    if before > after
      ret = ret + 1
    end
    before = after
    num_cnt = num_cnt + 1
    break if num_cnt == n
  end
  idx = idx + 1
end
p ret