x,k,d = gets.chomp.split(" ").map(&:to_i)

ans = x

minus = false

if x < 0
  minus = true
  x *= -1
end

y = x/d
r = x%d

if k < y
  ans -= k*d
else
  ans = r
  if (k-y%2) == 1
    ans -= d
  end
end

if minus
  ans *= -1
end

puts("#{ans.abs}")