a,b,c = gets.split(" ").map(&:to_i);

if a+b+c % 4 == 0
  print("YES")
else
  print("NO")
end

