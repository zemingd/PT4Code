a,b=gets.chomp.split(" ").map(&:to_i)
if b==100
  puts 100**a*b+1
else
  puts 100**a*b
end