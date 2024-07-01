nu = gets.to_i
array = gets.chomp.split(' ').map(&:to_i)
count1 = []
count2 = []
(0..nu - 1).each do |i|
  if i.even?
    count1.push(array[i])
  else
    count2.push(array[i])
  end
end
count3 = Array.new(10**5 + 1, 0)
count4 = Array.new(10**5 + 1, 0)

(0..count1.length - 1).each do |i|
  count3[count1[i]] += 1
end
(0..count1.length - 1).each do |i|
  count4[count2[i]] += 1
end

check1 = [0, 0]
check2 = [0, 0]
check3 = [0, 0]
check4 = [0, 0]
(1..10**5).each do |i|
  if check1[1] < count3[i]
    check1[1] = count3[i]
    check1[0] = i
  end
  if check2[1] < count4[i]
    check2[1] = count4[i]
    check2[0] = i
  end
end
(1..10**5).each do |i|
  if check3[1] < count3[i] && i != check1[0]
    check3[1] = count3[i]
    check3[0] = i
  end
  if check4[1] < count4[i] && i != check2[0]
    check4[1] = count4[i]
    check4[0] = i
  end
end

if check1[0] != check2[0]
  puts (count1.length - check1[1]) + (count2.length - check2[1])
  exit
end

if (check1[1] + check4[1]) > (check2[1] + check3[1])
  puts (count1.length - check1[1]) + (count2.length - check4[1])
else
  puts (count1.length - check3[1]) + (count2.length - check2[1])
end
