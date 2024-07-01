x, k, d = gets.chomp.split(' ').map(&:to_i)

i = 1

pk = x.abs / d
if pk > k
  dd = k * d
  i = k
else
  dd = pk * d
  i = pk
end

if x > 0
  x -= dd
else
  x += dd
end

while i < k
  if x.abs <= d
    if (k - i) % 2 == 1
      if x > 0
        x -= d
      else
        x += d
      end
    end
    break
  end

  if x > 0
    x -= dd
  else
    x += dd
  end
  i += 1
end

puts x.abs