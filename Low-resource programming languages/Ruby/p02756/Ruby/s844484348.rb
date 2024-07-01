s = gets.chomp
q = gets.to_i
isReverse = false
l, r = "", ""
q.times do
  t = gets.split
  if t[0].to_i == 1
    isReverse = !isReverse
  else
    f = t[1].to_i
    c = t[2]
    isBack = (f == 1 && isReverse) || (f == 2 && !isReverse)
    if isBack
      r << c
    else
      l << c
    end
  end
end
ans = l.reverse + s + r
ans.reverse! if isReverse
puts ans