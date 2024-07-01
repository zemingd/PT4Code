z = gets
i = 0
ngs = 753
max = 
a = z[i..(i+2)]
while i < z.length - 3 do
    a = z[i..(i+2)]
    hikaku = (a.to_i - 753).abs
    if i == 0 then
        max = hikaku
    elsif i != 0 && max > hikaku then
        max = hikaku
    end
    i += 1
end
puts max

