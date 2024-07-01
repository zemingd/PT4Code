a,b = gets.split
sum = (a + b).to_i
count = 0
for i in 1..100
  if i*i == sum
    puts "Yes"
    count += 1
    break
  end
end
if count == 0
    puts "No"
end