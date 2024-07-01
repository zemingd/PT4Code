n = gets.to_i
array = []
while string = gets
  array << string.chomp
end
if array.size != array.uniq.size
  puts "No"
else
  i = 0
  s = 0
  while i < n-1 do
    l = array[i].to_s
    r = array[i+1].to_s
    if l[l.size-1] == r[0]
      s += 1
    end
    i += 1
  end
  if s == n-1
    puts "Yes"
  else
    puts "No"
  end
end