m = -2
f = -2 
r = -2
while m != -1 || f != -1 || r != -1 
  m,f,r = gets.split.map(&:to_i)
  if m == -1 && f == -1 && r == -1 
  elsif  m == -1 || f == -1 || m + f < 30
    puts "F"
  elsif m + f < 50 && r < 50
    puts "D"
  elsif m + f < 65
    puts "C"
  elsif m + f < 80 
    puts "B"
  else 
    puts "A"   
  end
end
