x=gets.to_i
1.upto(34){|n|
  if n**2 > x
    puts (n-1)**2 
    exit
  end
}