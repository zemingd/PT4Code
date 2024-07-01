count=0
finish=false
tage=gets.chomp.downcase
while finish==false do
 str=gets.chomp
 t= str.split
 t.each do |i|
   if i.downcase==tage
     count+=1
    elsif i=="END_OF_TEXT"
     puts count
     finish=true
      break
     end
   end
end