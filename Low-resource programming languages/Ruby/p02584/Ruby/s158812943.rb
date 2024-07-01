x, k, d = gets.chomp.split(' ').map(&:to_i)

i = 1
while i <= k
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

  dd =
  if (x.abs / d) < (k - i)
    n = (x.abs / d).to_i - 1
    i += n
    n * d
  else
    i += 1
    d
  end

  if x > 0
    x -= dd
  else
    x += dd
  end
end

puts x.abs