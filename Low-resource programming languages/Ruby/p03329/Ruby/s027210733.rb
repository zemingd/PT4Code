n = gets.to_i
x = 0
while n > 6 do
  if n >= 59049 then
    n -= 59049
  elsif n >= 46656 then
    n -= 46656
  elsif n >= 7776 then
    n -= 7776
  else
    4.downto(1) do |i|
      if n >= 9**i then
        n -= 9**i
        break
      elsif n >= 6**i then
        n -= 6**i
        break
      end
    end
  end
  x += 1
end
x += n
print("#{x}\n")
