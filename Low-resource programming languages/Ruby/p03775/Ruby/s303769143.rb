n = gets.to_i
m = (n**0.5).ceil
for i in m..n do
  if n%i == 0 then
    puts i.to_s.length
    break
  end
end