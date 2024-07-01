a=gets.to_i
array=[]
a.times{
  array << gets.to_i
  }
#p array
array=array.sort
b = array.inject{|sum,y| sum+=y}
c=array.select{|n| n%10 !=0}

if c.size==0
  puts 0
else
  puts b - c[0]
end