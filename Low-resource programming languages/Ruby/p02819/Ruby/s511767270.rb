require 'prime'
x=gets.to_i
while(1)
  if x.prime?
    puts x
    exit
  else
    x+=1
  end
end