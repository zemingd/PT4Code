num = gets.chomp.split.map{|num| num.to_i}
 sum = 0
 x = num[0]
while  x <= num[1]
  if   num[2] % x == 0
    sum += 1
  end
  x += 1
end
p sum