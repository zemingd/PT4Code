x,k,d = gets.split(" ").map(&:to_i)
for num in 1..k do
  if (k - num).even?
    if x > 0
      x = x - d
    else
      x = x + d
    end

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
  else
    if x > 0
      x = x - d
    elsif
      x = x + d
    end
  end
end

if x > 0
  p x
else
  p -x
end