L, R = gets.chomp.split(" ").map(&:to_i)

# p L.modulo(2019) * R.modulo(2019)

ans = 2019
if (R - 2019) > 0 then
  for i in L..R do
    if i.div(2019) == 0 || i.div(3) == 0 || i.div(673) == 0 then
      ans = (i * i-1).modulo(2019)
      break
    end
  end
end

if ans == 2019 then
  if L.modulo(2019) < R.modulo(2019) then
    ans = (L * (L + 1)).modulo(2019)
  else
    ans = (R * (R - 1)).modulo(2019)
  end
end

p ans
