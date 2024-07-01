a=gets.chomp
if a.length%2==0
   b=a.scan(/.{1,#{2}}/)
   c=b.length
   o=0
   b.each do |x|
     if x=="hi"
       o+=1
     end
   end
  if o==c
    puts "Yes"
  else puts "No"
  end
  
  else puts "No"
end