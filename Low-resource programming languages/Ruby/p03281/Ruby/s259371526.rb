l=[0]*200
200.times do |i|
  j=1
  while (i+1)*j<201
    l[(i+1)*j-1]+=1
    j+=1
  end
end
gets.to_i.times do |i|
  puts i+1 if i.even? && l[i]==8
end
