a,b,c,k = gets.split.map(&:to_i)
sum = 0
if a >= k
  sum += k
else
  sum += a
  k -= a
  if k > 0
    if b < k
       k -= b
       sum -= k
    end
  end
end

puts sum