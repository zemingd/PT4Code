n = gets.to_i
s = gets.split("")
res = []

for k in 0..n-1 do #リーダーの場所
  count = 0
  if k == 0
    for i in 1..n-1 do
      if s[i] == "E"
        count += 1
      end
    end
  elsif k == n-1
    for i in 0..n-2 do
      if s[i] == "W"
        count += 1
      end
    end

  else
    w = s[0,k]
    e = s[k,n-k-1]
    for i in 0..k-1 do
      if s[i] == "W"
        count += 1
      end
    end
    for i in k+1..n-1 do
      if s[i] == "E"
        count += 1
      end
    end
  end
  res << count
end

puts res.min
