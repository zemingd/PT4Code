a,b=gets.split.map &:to_i
s=0
for k in a..b
 s+=1 if k.to_s==(k.to_s).reverse
end
p s