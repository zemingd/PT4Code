x = gets.to_i

a, b = 0, 0
if x == 1
  print "1, 0\n"
end

y = 1
if x < 0
  y = -1
end

(0..100).each do |i|
  if (x-(i*y)**5).abs < i**5
    if (i*y)**5 == x
      if y == 1
        print "#{i}, 0\n"
      else
        print "0, #{i}\n"
      end
    end

    a = i
    if (x - a**5) > 0
      b = -1
    else
      b = 1
    end
    while true do
      if a**5 - b**5 == x
        print "#{a}, #{b}\n"
        exit
      end

      if b < 0
        if a**5 - b**5 > x
          break
        end
        b -= 1
      else
        if a**5 - b**5 < x
          break
        end
        b += 1
      end
    end
  end
end
