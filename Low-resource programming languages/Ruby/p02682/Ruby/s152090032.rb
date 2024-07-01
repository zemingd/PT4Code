a,b,c,k=gets.chomp.split(" ").map(&:to_i)
puts a+b>=k ? [a,k].max : a-(k-a-b)