n = gets.to_i
ary = []
n.times do
  ary << gets.to_i
end
if n==1
  puts 1
  exit
end
ary.sort! #ソートはO(logN)
i = 0
s = -1
cnt = 0
while i < n-1 do #左からO(N)
  if ary[i] != ary[i+1]
    if (i-s)%2 == 1
      cnt += 1
    end
    s = i
  end
  i += 1
end
if (n-1-s)%2 == 0
  puts cnt
else
  puts cnt+1
end