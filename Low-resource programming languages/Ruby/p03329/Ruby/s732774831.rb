n = gets.to_i
x = 0
while n > 6 do
  if n >= 59049 then
    n -= 59049
  elsif n >= 46656 then
    if n % 46656 == 0 then
      x += 2
      n = 0;
      break
    end
    n -= 46656
  elsif n >= 7776 then
    if n % 7776 == 0 then
      x += n / 7776
      n = 0
      break
    end
    n -= 7776
  else
    4.downto(1) do |i|
      if n >= 9**i then
        if n % 9**(i-1) == 0 then
          x += n / 9**i
          n = 0
          break
        end
        n -= 9**i
        break
      elsif n >= 6**i then
        if n % 6**(i-1) == 0 then
          x += n / 6**i
          n = 0
          break
        end
        n -= 6**i
        break
      end
    end
  end
  x += 1
end
x += n
print("#{x}\n")
