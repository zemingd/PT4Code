def sumDigit(num, sum)
  if num == 0 then return sum end
  d, m = num.divmod(10)
  return sumDigit(d, m + sum)
end
 
n = gets.to_i

printf("#{n % sumDigit(n, 0) == 0 ? "Yes" : "No"}")
