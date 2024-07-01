a,b,c,d = gets.split.map(&:to_i)

while a > 0 && c > 0
  c -= b
  if c <= 0
    puts "Yes"   
  end
  
  a -= d
  if a <= 0
    puts "No" 
  end
end