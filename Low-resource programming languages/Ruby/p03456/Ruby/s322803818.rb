a,b = gets.split
sum = (a + b).to_i
for i in 1..100
  if i*i == sum
    puts "Yes"
    break
  end
end