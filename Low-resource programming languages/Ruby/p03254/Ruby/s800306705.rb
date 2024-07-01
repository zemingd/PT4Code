n,x = gets.split.map(&:to_i)

arr = gets.split.map(&:to_i).sort


i = 0
n.times{
    
  if arr[0..i].inject(:+)>x
      
     puts i
     
      break
  elsif arr[0..i].inject(:+)==x
      puts i+1
      break
      
  
  
  else
      i+=1
      
  end
    
}


if i==n
    
    puts n-1
end


