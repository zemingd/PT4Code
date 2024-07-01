a=gets.chomp.split.map(&:to_i)
c=0
  c=("#{a[1]}"*a[0])
d=0
  d=("#{a[0]}"*a[1])

if c[0]<d[0]
  puts c
else puts d
end
