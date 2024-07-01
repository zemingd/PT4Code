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
while count2 != count1 && count2 != 0 && count1 != 0
  if count2 > count1
    count2 %= count1
  else
    count1 %= count2
  end
end
if count1 == 0
  result = count2
else
  result = count1
end

if number[0] > 2
  count = 0
while count < number[0]
  count2 = distance[count]
  if distance[count] % result != 0
    while count2 != result && count2 != 0 && result != 0
      if count2 > result
        count2 %= result
      else
        result %= count2
      end
    end
  end
  if result == 0
    result = count2
  end
  count += 1
end
end

end

print result
