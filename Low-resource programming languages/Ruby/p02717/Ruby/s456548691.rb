x = gets.chomp.split(" ")

x[0],x[1] = x[1],x[0]
x[0],x[2] = x[2],x[0]

x.each do |x|
  puts x.chomp
end