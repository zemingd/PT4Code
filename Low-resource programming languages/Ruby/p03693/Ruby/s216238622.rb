a, b, c = gets.chomp.split(' ')
t = (a + b + c).to_i
if t % 4 == 1 then
  print("YES")
else
  print("NO")
end