kingaku,kazu=gets.chomp.split.map(&:to_i)
i=kingaku+1
array=[0,1,2,3,4,5,6,7,8,9]
kirai_array=gets.chomp.split.map(&:to_i)

while 1
  b=0
  kirai_array.each do |n|
    if i.split.map(&:to_i).include?(n)
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
    