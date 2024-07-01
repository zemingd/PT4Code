x, k, d = gets.chomp.split(' ').map(&:to_i)

i = 1
while i <= k
  if x.abs <= d
    if i % 2 == 0
      if x > 0
        x -= d
      else
        x += d
      end
    end
    break
  end

  if x > 0
    x -= d
  else
    x += d
  end
  i += 1
end

puts x.abs