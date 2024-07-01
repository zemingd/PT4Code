num1 = gets.to_i
num2 = gets.to_i
cal = []

zerocal = 0

num2.times do
  while zerocal <= num1 do
    zerocal += 1
    if zerocal - num1 == 0
      cal.push(zerocal)
    end
  end
end

count = num2

while num2 + 500 <= num1 do
  num2 += 500
  count.times do  
    while num2 <= num1 do
      num2 += 1
      if num2 == num1
        cal.push(num2)
      end
    end 
  end
end

if cal.any? == true
  puts "Yes"
else
  puts "No"
end
