a = gets.chomp
b = gets.chomp
c = gets.chomp
d = gets.chomp
e = gets.chomp
sum = 0
array = [a,b,c,d,e]
s = []
flag = false
array.each do |i|
  if i[-1].to_i != 0
    sum += i.to_i + 10 - i[-1].to_i 
    flag = false
  else
    sum += i.to_i 
    flag = true
  end
end 
min = 10
array.each do |i|
  min = i[-1].to_i if min > i[-1].to_i && i[-1].to_i != 0
end
puts flag ? sum - min : sum - 10 + min