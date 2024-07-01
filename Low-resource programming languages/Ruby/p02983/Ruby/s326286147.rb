l, r = gets.split.map(&:to_i)
ans = -1

d = 0
while d <= 2019 && l + d <= r
  if (l + d) % 2019 == 0
    ans = 0
    break
  end
  d += 1
end

if ans == 0
  puts ans
else
  ansmin = 2019
  for i in l..r
    for j in (i+1)..r
      if ansmin > (i * j) % 2019
        ansmin = (i * j) % 2019
      end
    end
  end
  puts ansmin
end  