K = gets.chomp.to_i

if K.even? then
  p (K/2)**2
else
  p (K/2)*(K/2+1)
end