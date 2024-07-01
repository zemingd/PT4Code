a = gets.chomp.split(" ")
if(a[1] == "+")
p a[0].to_i + a[2].to_i
else
  p a[0].to_i - a[2].to_i
end