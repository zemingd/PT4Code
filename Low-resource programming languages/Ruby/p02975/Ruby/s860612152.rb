n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

i=0
flag=0
loop do
  j=i+2
  
  break if flag==1
  break if j>a.length
  while (a[j%n]!=a[i]^a[(i+1)%n]) do
    j+=1
    if(j>=a.length+1)
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
