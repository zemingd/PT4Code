A,B = gets.split.map(&:to_i)
if A * B > A + B then
  if A * B > A - B then
    print A * B
  else
    if A + B > A - B then
      print A + B
    else
      print A - B
    end
  end  
end