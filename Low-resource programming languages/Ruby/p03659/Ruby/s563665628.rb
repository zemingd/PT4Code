n=gets.chomp.to_i
A=gets.chomp.split.map(&:to_i)
y=A.inject(:+)
x=0
ans=10**12
A.pop
A.each do |e|
   x+=e
   y-=e
   z=(y-x).abs
   ans=z if ans > z
end
puts ans.abs