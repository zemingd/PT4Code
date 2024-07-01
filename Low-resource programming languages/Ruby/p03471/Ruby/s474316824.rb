n, y = gets.strip.split.map(&:to_i)
maisuu = y/1000
sabun = (maisuu - n)

maisuu_10000 = sabun/9
maisuu_5000 = (sabun%9)/4
maisuu_1000 = maisuu - maisuu_10000*10 - maisuu_5000*5

if sabun >= 0 and maisuu_1000 >= 0 and n == maisuu_1000 + maisuu_5000 + maisuu_10000
  if (sabun%13)%9 == 0 or (sabun%13)%4 == 0 or sabun%9 == 0 or sabun%4 ==0
    puts sprintf('%d %d %d', maisuu_10000, maisuu_5000, maisuu_1000)
  else
    puts sprintf('%d %d %d', -1, -1, -1)
  end
else
  puts sprintf('%d %d %d', -1, -1, -1)
end
