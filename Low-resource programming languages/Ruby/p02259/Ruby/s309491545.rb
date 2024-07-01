n = gets.to_i
a = gets.split.map {|s| s.to_i}
cnt = 0
for i in 0..n-2
  j = n-1
  while j > i
    if a[j] < a[j-1]
      t = a[j]
      a[j] = a[j-1]
      a[j-1] = t
      cnt += 1
    end
    j -= 1
  end
end
for i in 0..n-1
  print " " unless i==0
  print a[i]
end
print "\n"
puts cnt