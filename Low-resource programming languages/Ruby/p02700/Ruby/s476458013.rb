a,b,c,d=gets.chomp.split.map(&:to_i)
counter1=0
counter2=0
if c%b==0
  counter1 = c/b
else 
  counter1 = c/b+1
end
if a%d==0
  counter2 = a/d
else 
  counter2 = a/d+1
end
if counter1<= counter2
  puts "Yes"
else
  puts "No"
end  