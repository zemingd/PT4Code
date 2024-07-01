n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

i=0
flag=0
loop do
  break if flag==1
  j=i+2
  break if j>a.length-1
  while (a[j]!=a[i]^a[i+1] && i<a.length) do
    j+=1
    if(j>=a.length-1)
      flag=1
      break
    end
  end
  i+=1
end

if flag==0
  puts 'Yes'
else
  puts 'No'
end
