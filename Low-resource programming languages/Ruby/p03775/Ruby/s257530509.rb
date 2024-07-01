n = gets.chomp.to_i
 
res = Math.sqrt(n).floor
 
while res > 1 do
  break if n%res==0
  res -= 1
end
 
puts Math.log10(n/res).floor + 1