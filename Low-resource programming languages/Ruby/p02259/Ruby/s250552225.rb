array = Array.new
count = 0
n = gets.chomp.to_i

i = 0
while i < n 
  array[i] = gets.chomp.to_i
  i = i+1
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