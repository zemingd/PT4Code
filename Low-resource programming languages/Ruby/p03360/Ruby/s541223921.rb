a=gets.chomp.split(" ").map { |e| e.to_i }.sort
k=gets.chomp.to_i

puts a[0]+a[1]+a[2]*(2**k)