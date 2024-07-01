a=gets.to_i
array=[]
a.times{
  array << gets.to_i
  }
 
array=array.sort
b = array.inject{|sum,y| sum+=y}
if b%10 != 0
  puts b
else
  array.each do |n|
      if (array - n)%10!=0
        puts array-n
        break
      end
  end
  puts 0
end
