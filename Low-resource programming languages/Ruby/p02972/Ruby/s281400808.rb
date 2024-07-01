n = gets.to_i
a = gets.split.map(&:to_i)
ns = Array.new(n)

numcnt = 0
num = n
div = 1
while num >= 1
  if ((num - 1) / (div + 1) + 2 <= num) && (num <= (n - 1) / div + 1)
  else
    div += 1
  end
  
  if div == 1
    ns[num-1] = a[num-1]
  else
    cnt = 0
    for i in 2..div
      if a[num*i - 1] == 1
        cnt += 1
      end
    end
    if cnt % 2 == a[num-1]
      ns[num-1] = 0
    else
      ns[num-1] = 1
    end
  end
  numcnt += 1 if ns[num-1] == 1
  num -= 1
end

puts numcnt
for i in 0..(n-1)
  if ns[i] == 1
    print "#{i+1} "
  end
end
puts ""