n,a,b=gets.chomp.split(" ").map{|s| s.to_i}
if a*n>=b
  puts b
else
  puts a*n
end