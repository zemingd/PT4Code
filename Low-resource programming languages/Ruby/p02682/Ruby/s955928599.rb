a,b,c,k = gets.split(" ").map(&:to_i)
#a_cnt,b_cnt,c_cnt = 0
sum = 0

if a <= k
  sum += a * 1
  k = k-a
  
  if b <= k
    sum += b * 0
    k = k-b
    
    if c <= k
      sum += c * (-1)
      k = k-c
    else
      sum += k * (-1)
    end
    
  else
    sum += k * 0
  end
  
else
  sum += k * 1
end

puts sum