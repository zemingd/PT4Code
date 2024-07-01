array = Array.new
count = 0
n = gets.chomp.to_i
n.times do
  array.push(gets.chomp.to_i)
end
 
i = 0
while i<n
  j = n-1
  while j > i
    if array[j] < array[j-1]
      array[j],array[j-1] = array[j-1],array[j]
      count = count+1
    end  
    j = j-1
  end
  i=i+1
end
 
i = 0
while i < n 
  print array[i] 
  if i+1 != n
  print " "
  end
  i = i+1
end
print "\n"
print count
print "\n"