h = gets.to_i
ans = 0
until h==0
  ans = ans*2+1
  h /= 2
end
p ans
