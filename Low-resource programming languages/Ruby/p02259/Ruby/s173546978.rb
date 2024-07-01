array = Array.new
count = 0
n = gets.chomp.to_i
if n > 100

end

i = 0
while i < n 
  array[i] = gets.chomp.to_i
  i = i+1
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
  print " "
  i = i+1
end
print "\n" 
print count
print "\n" 