n=gets.chomp.to_i
a=gets.chop.split(" ").map { |e| e.to_i  }

m=0 

for i in 0..n-1
  m += a[i]
end

puts m-n