n=gets.to_i
a=gets.chomp.split.map(&:to_i)
b=a.sort
counter=0
a.each_with_index do|x,i|
  if x != b[i]
    counter=counter+1
  end  
end 
if (counter=0 || counter=2)
  puts "YES"
else
  puts "NO"
end  