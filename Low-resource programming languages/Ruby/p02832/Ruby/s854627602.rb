n=gets.to_i
a=gets.split.map(&:to_i)
i=1
a.each do |b|
  if b==i
    i+=1
  end
end
if i==1
  puts "-1"
else
  puts n-i+1
end

