n=gets.to_i
blocks=gets.chomp.split().map(&:to_i)
kakuho=0
counter=1
blocks.map{|block|
 if block == counter 
   counter=counter+1
   kakuho=kakuho+1
 end  
}
if kakuho == 0
  puts -1
else
  puts blocks.count-kakuho
end  