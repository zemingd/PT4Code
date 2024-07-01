n = gets.to_i
as = gets.split.map(&:to_i)

cnt = 0
i = 1
as.each do |a|
  if i == a
    i += 1
  else
    cnt += 1
  end
end

if cnt == n
  p(-1)
else
  p cnt
end
