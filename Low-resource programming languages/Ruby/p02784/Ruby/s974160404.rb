H,N=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

if a.reduce{|i,j| i+j} < H
  puts "No"
else
  puts "Yes"
end