n = gets.to_i
m = (n**0.5).ceil
k = 0
(1..m).reverse_each do |i|
  if n%i == 0 then
    k = n/i
    break
  end
end
if k == 0 then
  puts n.to_s.length
else
  puts k.to_s.length
end