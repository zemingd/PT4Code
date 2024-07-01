a=gets.to_i
array=[]
a.times{
  array << gets.to_i
  }
#p array
array=array.sort
b = array.inject{|sum,y| sum+=y}
check=1
if b%10 != 0
  puts b
else
  array.each do |n|
      if (b - n)%10!=0
        puts b-n
        check=0
        break
      end
  end
  if check==1
  	puts 0
  end
end