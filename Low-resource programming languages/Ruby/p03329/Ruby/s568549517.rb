nn = gets.to_i
ans = nn
0.upto(nn) do |m|
  x = 0
  n = m
  while n > 0 do
    if n >= 46656 then
      n -= 46656
    elsif n >= 7776 then
      n -= 7776
    elsif n >= 1296 then
      n -= 1296
    elsif n >= 216 then
      n -= 216
    elsif n >= 36 then
      n -= 36
    elsif n >= 6 then
      n -= 6
    elsif n >= 1 then
      n -= 1
    end
    x += 1
  end

  n = nn - m
  while n > 0 do
    if n >= 59049 then
      n -= 59049
    elsif n >= 6561 then
      n -= 6561
    elsif n >= 729 then
      n -= 729
    elsif n >= 81 then
      n -= 81
    elsif n >= 9 then
      n -= 9
    elsif n >= 1 then
      n -= 1
    end
    x += 1
  end
  if ans > x then
    ans = x
  end
end
print("#{ans}\n")
