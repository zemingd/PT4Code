a=gets.chomp.to_i
b=gets.chomp.split.map(&:to_i)
c=b.combination(3).to_a
d=0
c.each do |x,y,z|
  if x+y>z&&x+z>y&&z+y>x
     d+=1
  end
end
puts d