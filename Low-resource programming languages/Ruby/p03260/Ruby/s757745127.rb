def codei
  return gets.split.map &:to_i
end
a,b = codei; obj = a * b; count = 0
3.times do |i|
  ans = obj * i
  if ans%2 == 1
    count += 1
  end
end
if count > 0
  puts "Yes"
else
  puts "No"
end
