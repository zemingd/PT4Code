ss = gets.chomp
tt = gets.chomp

cnt = 0
t = 0
while t<tt.length do
  s = ss.index(tt[t])
  if s.nil?
    puts -1
    exit
  end

  t += 1
  if t == tt.length
    cnt += s+1
    break
  end

  while true do
    s = ss.index(tt[t],s+1)
    if s.nil?
      cnt += ss.length
      break
    end

    t += 1
    if t == tt.length
      cnt += s+1
      break
    end
  end
end
puts cnt
