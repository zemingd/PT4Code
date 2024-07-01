kingaku,kazu="888 3".chomp.split.map(&:to_i)
i=kingaku+1
array=[0,1,2,3,4,5,6,7,8,9]
kirai_array="1 2 9".split.map(&:to_i)
b=0
while 1
  b=0
  kirai_array.each do |n|
    if i.to_s.split("").map(&:to_i).include?(n)
        b=1
    	break
    end
  end
  if b==0
    break
  end
  i+=1
end
 
puts i
