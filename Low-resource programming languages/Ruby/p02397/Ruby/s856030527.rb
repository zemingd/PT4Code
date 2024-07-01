ex1 = gets()
ex2 = ex1.split()
x = ex2[0].to_i
y = ex2[1].to_i

until x == 0 && y == 0
  if x <= y
    puts "#{x} #{y}"
 else
    puts "#{y} #{x}"
 end

 ex1 = gets()
 ex2 = ex1.split()
 x = ex2[0].to_i
 y = ex2[1].to_i

end
