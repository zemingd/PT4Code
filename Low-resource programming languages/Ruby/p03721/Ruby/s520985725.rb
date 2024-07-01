n,m = gets.split.map(&:to_i)
k = []
for i in 0..m-1
k[i] = gets.split.map(&:to_i)
end
k.sort!
for j in 1..n
  cnt = 0
  for i in 0..m-1
  if k[i].include?(j)
    cnt += 1
  end
  end
  puts cnt
end