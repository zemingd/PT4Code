q=gets.split
while i=q.index{|o|o<=?-}
a,b,c=q[r=i-2..i]
q[r]=eval(a+c+b).to_s
end
puts q