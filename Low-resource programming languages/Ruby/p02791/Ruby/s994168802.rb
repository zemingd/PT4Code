def doit(str, min, cnt)
  p = str.to_i
  if p < min
    cnt += 1
    min = p
  end
  [min, cnt]
end

n = gets.to_i
str = ''
nums = []
min = 9999999
cnt = 0
while true
  c = $stdin.getc
  if 48 <= c.ord && c.ord <= 57
    str << c 
  else
    min, cnt = doit(str, min, cnt)
    if c == ' '
      str = ''
    else
      break
    end
  end
end

puts cnt
