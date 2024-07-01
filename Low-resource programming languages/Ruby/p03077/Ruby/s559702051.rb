def bottleneck(a, b)
  i = a.index(a.min)
  if a[i] >= b 
    -1
  else
    i
  end
end

a = [0, 0, 0, 0, 0, 0]
a.map! { STDIN.gets.to_i }
b = a.shift
c = bottleneck(a,b)
puts (c==-1?5:b/a[c]+(c==4?4:5))