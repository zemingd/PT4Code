a=gets.to_i
sum = 0
two = 1
while a > 0
  a = a / 2
  sum = sum + two
  two = two * 2
end
print("#{sum}\n")