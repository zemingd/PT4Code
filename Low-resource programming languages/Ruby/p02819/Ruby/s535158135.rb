x = gets.to_i
if x == 2
  puts x
else
  x = (x / 2) * 2 + 1
  while true do
    d = 3
    found = true
    while d * d <= x do
      if x % d == 0
        found = false
        break
      end
      d += 2
    end
    if found
      puts x
      break
    end
    x += 2
  end
end
