a,b = gets.chomp.split(" ").map(&:to_i)
x = (a+b)/2.to_f
print(x.ceil)