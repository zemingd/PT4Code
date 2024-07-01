a,b = gets.split
sum = (a + b).to_i
count = 0
for i in 1..1000
  if i*i == sum
    puts "Yes"
    count += 1
    break
  end
end
if count == 0
    puts "No"
end