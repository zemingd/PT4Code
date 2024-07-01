def count(hp,bp)
  if(hp%bp!=0)
    return hp/bp+1
  end
  return hp/bp
end

A,B,C,D = gets.split()
if(count(A.to_i(),D.to_i())>=count(C.to_i(),B.to_i()))
  puts('Yes')
else
  puts('No')
end