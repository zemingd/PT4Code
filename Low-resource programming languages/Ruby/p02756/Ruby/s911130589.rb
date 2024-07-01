s = gets.chomp
q = gets.to_i
isReverse = false

q.times do
  t = gets.split
  if t[0].to_i == 1
    isReverse = isReverse ? false: true
  else
    f = t[1].to_i
    c = t[2]
    back = (f == 1 && isReverse) || (f == 2 && !isReverse)
    if back
      s += c
    else
      s = c + s
    end
  end
end
if isReverse
  puts s.reverse
else
  puts s
end
