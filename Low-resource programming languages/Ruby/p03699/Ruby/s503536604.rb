a=gets.to_i
array=[]
a.times{
  array << gets.to_i
  }
array=array.sort
while 1 do
  if array.empty?
    puts 0
  	break
  end
  if array.sum%10==0
    array.shift
  else
    puts array.inject{|sum,y| sum+=y}
  	break
  end
end