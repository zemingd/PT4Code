x,k,d = gets.split(" ").map(&:to_i)

if x > 0 && x >= k * d
  p x - (k * d)
  return
elsif x < 0 && - x >= k * d
  p -x - (k * d)
  return
end

for num in 1..k do
  if x > 0
    x = x - d
  else
    x = x + d
  end
  if (k - num).even?
    if x == 0
      p x
      return
    elsif x > 0 && x <= d
      p x
      return
    elsif x < 0 && -x <= d
      p -x
      return
    end
  end
end

if x > 0
  p x
else
  p -x
end