a=gets.to_i
line=gets.chomp.split().map(&:to_i)
a.times do |count|
  if line[count] %2 ==0 
    if line[count]%6 !=0  && line[count]%10 !=0
      puts "DENIED"
      break
    end   
  end  
  if count == line.size-1
    puts "APPROVED"
  end  
end  