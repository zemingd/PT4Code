a,b,c,k = gets.split(" ").map(&:to_i)
sum = 0

if k-a >= 0
  sum += a*1
  k = k-a
  if k-b >= 0
    sum += b*0
    k = k-b
    if k-c >= 0
      sum += c*(-1)
    end
  else
    sum += b*0
  end
else
  sum += a*1
end

puts sum