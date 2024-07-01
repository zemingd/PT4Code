k = gets.to_i
if k%2==0
  answer = (k/2)**2
else
  answer = ((k+1)/2)*((k-1)/2)
end
puts answer
