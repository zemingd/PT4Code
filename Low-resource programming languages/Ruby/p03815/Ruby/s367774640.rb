x=gets.strip.to_i

count = (x/11).floor

if x%11 ==0
  p 2*count
elsif x%11 <= 5
  p 2*count+1
else
  p 2*count+2
end

