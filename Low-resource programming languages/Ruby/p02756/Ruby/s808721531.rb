answer=gets.chomp
q=gets.to_i
first=""
last=""
zyun=true
array=[]
q.times {
    input=gets.chomp.split
    array<<input
}

i=0
q.times {
   if array[i][0]=="1"
       zyun=!zyun
   elsif array[i][1]=="1"
       if zyun
           first=array[i][2]+first
       else
           last=lastr+array[i][2]
       end
   elsif array[i][1]=="2"
       if !zyun
           first=array[i][2]+first
       else
           last=last+array[i][2]
       end
   end
    
   i+=1
}
answer=first+answer+last

if !zyun
   answer=answer.reverse 
end

puts answer








