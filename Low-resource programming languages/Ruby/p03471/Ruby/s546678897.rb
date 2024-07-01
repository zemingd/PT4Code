line = gets
line.chomp!

/(\d+)\s+(\d+)/ =~ line

n = $1.to_i
y = $2.to_i

fin = false
i = 0
while i <= n and not fin
  m1 = y - 10000*i
  if m1 == 0 and i == n
    printf("%d 0 0",i)
    fin = true
    break
  elsif m1 < 0
    printf("-1 -1 -1")
    fin = true
    break
  else
    j = 0
    while j <= n-i and not fin
      m2 = m1 - 5000*j
      k = n -i -j
      if m2 == 0
        if k == 0
          printf("%d %d 0",i,j)
          fin = true
        end
        break
      elsif m2 < 0
        break
      end
      if 1000*k == m2 and k >= 0
        printf("%d %d %d",i,j,k)
        fin = true
        break
      end
      j += 1
    end
  end
  i += 1
end

if not fin
  printf("-1 -1 -1")
end
