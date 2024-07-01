# Your code here!

s=gets
min=999
for i in 0..s.size-3 do
    n=s[i..i+2].to_i
    dif=(753-n).abs
    if(min>dif)
        min=dif
    end
end
puts min