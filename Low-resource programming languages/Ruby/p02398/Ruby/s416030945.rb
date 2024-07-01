x = gets 
x = x.split
a = x[0].to_i
b = x[1].to_i
c = x[2].to_i

d = 0
while a % d == 0 && c % d == 0 do
    d += 1
    if a < d;break
    end

   puts d.to_s
end

