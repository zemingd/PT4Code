N, *LS = $stdin.read.split.map(&:to_i) 
LS.sort!
ans = 0
for i in 0..(N-3)
  a = LS[i]
  for j in (i+1)..(N-2)
    b = LS[j]
    for k in (j+1)..(N-1)
      c = LS[k]
      break if c >= a-b
      ans += 1
    end
  end
end
p ans
