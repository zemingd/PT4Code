n = gets.to_i
(1..n).each do |i|
  x = i
  if x % 3 == 0
    print " #{i}"
  else
    until x == 0
      if x % 10 == 3
        print " #{i}"
        break
      else
        x /= 10
      end
    end
  end
end
print "\n"