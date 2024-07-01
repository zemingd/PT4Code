a,b,c,k = gets.split.map(&:to_i)
if k <= a
  puts a
else k > a
  puts a*1+(k-a)*0+(k-a-b)*(-1)
end