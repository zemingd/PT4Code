count=0
finish=false
tage=gets.chomp.downcase
while finish==false do
 str=gets.chomp.downcase
 t= str.split
 t.each do |i|
   if i==tage
     count+=1
   elsif i=="end_of_text"
     puts count
     finish = true
     break
   end
 end
end