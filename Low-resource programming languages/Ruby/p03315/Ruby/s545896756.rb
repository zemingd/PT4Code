a = gets.chomp!.split("")
b = 0
for i in 0...4 
  a[i]=="+" ? b = b + 1 : b = b - 1
end
puts b