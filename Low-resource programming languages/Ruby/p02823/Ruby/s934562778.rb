n, a, b = gets.chomp.split(" ").map(&:to_i)

min = [a, b].min
max = [a, b].max

if min == max
  p 0
elsif (max - min) % 2 == 0
  print "#{(max - min) / 2}\n"
else
  if max - 1 > n - min
    t = (n - max + 1)
    if n - (min + t) > 0
      t_a = (n - (min + t)) / 2
      print "#{t + t_a}\n"
    else
      print "#{t}\n"
    end
  else
    t = min
    if (max - t) > 0
      t_a = (max - t) / 2
      print "#{t + t_a}\n"
    else
      print "#{t}\n"
    end
  end
end