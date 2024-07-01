def calc(a,b,c)
  @a = a
  @b = b
  @c = c
  
  sum = a / c
  
  if sum >= b
    p "Yes"
  else
    p "No"
  end
  
end