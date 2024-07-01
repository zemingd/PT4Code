a,b,c = gets.chomp.split(" ").map(&:to_s)

sum = (a + b + c).to_i
if sum % 4 == 0
  print("YES")
else
  print("NO")
end