n = gets.to_i
m = (n**0.5).ceil
k = 0
for i in m..n/2 do
  if n%i == 0 then
    k = i
    break
  end
end
if k == 0 then
  puts n.to_s.length
else
  puts k.to_s.length
end