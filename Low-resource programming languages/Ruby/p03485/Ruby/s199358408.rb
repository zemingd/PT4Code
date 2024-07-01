a= gets.chomp.split("")
b= gets.chomp.split("")

asorted = a.sort do |a, b|
  a <=> b
end

bsorted = b.sort do |a, b|
  a <=> b
end
i=0
k=0

if asorted == bsorted
  then
   puts'No'
   k = 1
 end

if asorted[i] == bsorted[i] && k==0
    then i =i+1
end

if asorted[i]==nil && k==0
  then puts 'Yes'
    k = 1
elsif bsorted[i]==nil && k==0
  puts'No'
  k = 1
else

if k==0
  if asorted[i] < bsorted[i]
  then puts'Yes'
else puts'No'
end
end
end
