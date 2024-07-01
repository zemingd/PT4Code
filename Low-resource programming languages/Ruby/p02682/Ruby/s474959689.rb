a,b,c,k = gets.chomp.split(" ").map(&:to_i)

ans = 0

if a >= k
  ans = k
else
  ans = a
  k -= a
  if b < k
    k -= b
    ans -= k
  end
end

puts("#{ans}")