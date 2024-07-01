n = gets.to_i
 
n.times{
  a = gets.to_i
  b = gets.to_i
   
  s = (a + b).to_s
   
  if (s.length > 80)
    puts "overflow"
  else
    puts s
  end
}
