string = gets.strip
count = 0
len = string.length / 2
len.times do
  a = 1
  i = 0
  if string[i] != string[-a]
    count += 1
  end
    a += 1
    i +=1
  count
end
 
puts count