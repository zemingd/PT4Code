a=gets.chomp.apli(" ").map { |e| e.tp_i }.sort
k=gets.chomp.to_i

puts a[0]+a[1]+a[2]*(2**k)
