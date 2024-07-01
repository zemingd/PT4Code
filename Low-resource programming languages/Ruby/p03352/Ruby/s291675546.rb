def check(x)
  i = 2
  max = 1
  while (i ** 2) <= x
    j = 2
    while true
      test = i ** j
      if test < x
        if test > max
          max = test
        end
      end
      if test == x
        return x
      end
      if test > x
        break
      end
      j += 1
    end
    i += 1
  end
  return max
end

x = gets.chomp.to_i
if x == 1
  puts 1
else
  puts check(x)
end