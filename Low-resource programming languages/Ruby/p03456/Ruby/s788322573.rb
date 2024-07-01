a,b = gets.chomp.split(" ")
c = (a + b).to_i
for i in 1..100
  if c == i**2
    puts "Yes"
    break
  elsif i == 100
    puts "No"
  end
end