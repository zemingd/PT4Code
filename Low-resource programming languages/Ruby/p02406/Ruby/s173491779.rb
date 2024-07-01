n = gets.to_i
i = 1

loop do
  x = i
  if (x % 3 == 0) then
    printf " %d", i
  else
    loop do
      if (x % 10 == 3 ) 
        printf " %d", i
        break
      end
      x /= 10
      break if x == 0
    end
  end
  i += 1
  break if (i > n)
end

puts
