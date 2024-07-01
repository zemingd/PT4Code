a,b = gets.chomp.split(" ")
c = (a + b).to_i
ans = "No"

for i in 1..317 do
  if i*i == c
    ans = "Yes"
    break
  end
end
  

puts ans