a,b,c,= gets.split
a,c = a.to_i,c.to_i
  if b == "+"
    puts a + c
  else 
    puts a - c
  end