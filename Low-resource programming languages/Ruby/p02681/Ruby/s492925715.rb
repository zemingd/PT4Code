def(S,T)
  
  v = (a,e,i,o,u)
  T1 = S+v.scan(.)

  if T1 == T
    puts "yes"
  else
    puts "no"
  end
end