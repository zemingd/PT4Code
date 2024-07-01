

kingaku,kazu=gets.chomp.split.map(&:to_i)
i=kingaku+1
kirai_array=gets.chomp.split.map(&:to_i)
b=0
while TURE
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
