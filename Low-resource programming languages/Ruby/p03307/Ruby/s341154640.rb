a=gets.to_i
loop do
  if a%2==0
    a= a/2
  else
    break
  end
end
puts a*2
