n,l = gets.split(" ").map{|k|k.to_i}
sum = (l+l+n-1)* n/2
if l >= 0 then
  puts (sum-l)
elsif l.abs >= n
  puts (sum-(l+n-1))
else
  puts sum
end