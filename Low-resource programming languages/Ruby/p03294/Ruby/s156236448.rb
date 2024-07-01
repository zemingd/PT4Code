n=gets.chomp
a=gets.chop.split(" ").map { |e| e.to_i  }.sort.reverse!

for i in 0..n-1 do
  m += a[i]
end

puts m-1