a=gets.split.map{|i| i.to_i};
if a[0]>=13
    p a[1]
else if a[0] >= 6
    p a[1] /2
else
    p 0
end end