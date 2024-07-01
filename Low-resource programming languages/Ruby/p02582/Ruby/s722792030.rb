s = gets
cnt = 0
max = 0
s.times |a| do
  if a == 'R'
    cnt += 1
  else
    cnt =0
  end
  if max <cnt
    max = cnt
  end
end
p max