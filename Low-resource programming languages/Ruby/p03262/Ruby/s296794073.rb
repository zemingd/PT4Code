nu = gets.chomp.split(" ")
number = nu.map!{|x| x.to_i}
ci = gets.chomp.split(" ")
city = ci.map!{|x| x.to_i}
distance = Array.new(number[0], 0)
count1 = 0
count2 = 0

#D == city[i]と初期位置の差の最大公約数
for i in 0..number[0] - 1
  distance[i] = (city[i] - number[1]).abs
end
result = distance[-1]

if number[0] > 1

count1 = distance[1]
count2 = distance[0]
while count1 != count2
  if count1 > count2
    count1 -= count2
  else
    count2 -= count1
  end
end
result = count2

if number[0] > 2
  count = 0
while count < number[0]
  count2 = distance[count]
  if distance[count] % result != 0
    while count2 != result
      if result >= count2
        result -= count2
      else
        count2 -= result
      end
    end
  end
  count += 1
end
end

end

print result
