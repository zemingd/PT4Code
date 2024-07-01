n = gets.to_i
a = gets.split.map(&:to_i)

swap_times = 0
for i in 0...(a.length - 1 )
  jMin=i
  for j in (i+1)...(a.length)
    if (a[j] < a[jMin])
        jMin = j;
    end
  end
  if (jMin != i)
    swap_times += 1
    temp=a[i]
    a[i]=a[jMin]
    a[jMin]=temp
  end
end

if swap_times > 1
  puts "NO"
else
  puts "YES"
end