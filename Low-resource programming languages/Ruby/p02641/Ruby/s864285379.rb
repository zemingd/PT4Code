x,n = gets.chomp.split.map(&:to_i)
ps = gets.chomp.split.map(&:to_i)

ans = -1

xp = x
xm = x
while xp <= 101 && xm >= -1
  if ps.count(xm) == 0
    ans = xm
    break
  elsif ps.count(xp) == 0
    ans = xp
    break
  end
  xp += 1
  xm -= 1
end

puts ans