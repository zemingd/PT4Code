n=gets.to_i
a=gets.split.map(&:to_i)
l=[0]*200001
a.each do |aa|
  l[aa]+=1
end
c=0
l.each do |ll|
  if ll>0
    c+=ll*(ll-1)/2
  end
end
a.each do |aa|
  puts c-l[aa]+1
end

