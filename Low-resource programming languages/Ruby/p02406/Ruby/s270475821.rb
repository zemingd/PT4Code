n = gets.chomp.to_i
i = 1

while i <= n
  x = i
  if x % 3 == 0
    print " #{i}"
    i += 1
    next
  elsif x % 10 == 3
    print " #{i}"
    i += 1
    next
  end

  x /= 10
  if x % 10 == 3
    print " #{i}"
    i += 1
    next
  end
  i += 1
end
puts