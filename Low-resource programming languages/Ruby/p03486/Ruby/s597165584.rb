s = gets.chomp.split(" ")
t = gets.chomp.split(" ")
s.sort!
t.sort!.reverse!
s.join
t.join
if s.to_s< t.to_s
  print("Yes")
else
  print("No")
end
