a, b, c, k = gets().chomp.split("\s").map{|x| x.to_i}

ac = 0
bc = 0
cc = 0

ac = a > k ? k : a
rem = k - ac

bc = b > rem ? rem : b
rem = rem - bc

cc = c > rem ? rem : c

puts ac - cc
