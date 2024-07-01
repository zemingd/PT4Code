a,b,c,k = gets.chomp.split.map(&:to_i)
if k <= a
  puts k
else k > a
  puts a*1+(k-a-b)*(-1)
end 
