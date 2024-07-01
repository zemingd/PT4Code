a=gets.to_i
array=[]
a.times{
  array << gets.to_i
  }
array=array.sort
while 1 do
  if array.size==0
    puts 0
  	break
  end
  if array.inject{|sum,y| sum+=y}%10==0
    array.shift
  else
    puts array.inject{|sum,y| sum+=y}
  	break
  end
end