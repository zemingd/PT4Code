A, B = gets.split(" ").map(&:to_i)

ans = 0
if A >= B
  ans += A
  if A - 1 >= B
    ans += A - 1
  else
    ans += B
  end
else
  ans += B
  if B - 1 >= A
    ans += B - 1
  else
    ans += A
  end
end

puts ans
