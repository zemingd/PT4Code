S = gets.chomp.reverse!
W = ["dream".reverse, "dreamer".reverse, "erase".reverse, "eraser".reverse]
l = S.length
t = 0
while t < l
  for j in 0...4
    f = true
    for k in 0...W[j].length
      if S[t+k] != W[j][k]
        f = false
        break
      end
    end
    if f
      t += W[j].length
      break
    elsif j == 3
      t = l+1
      break
    end
  end
end
if t == l
  puts 'YES'
else
  puts 'NO'
end