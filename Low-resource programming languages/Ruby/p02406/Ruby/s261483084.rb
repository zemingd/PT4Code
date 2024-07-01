n = gets.chomp.to_i
i = 1

while i <= n
  x = i
  if x % 3 == 0 || x % 10 == 3
    print " #{i}"
  else
    x /= 10
    if x % 10 == 3
      print " #{i}"
    end
  end
  i += 1
end
puts