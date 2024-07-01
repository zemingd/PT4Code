n=gets.chomp.to_i
A=gets.chomp.split.map(&:to_i)
total=A.inject(:+)
x=0
ans=(total-2*A[0])

A.each do |e|
   x+=e
   y=total-x
   ans=[ans, (y-x).abs].min
end
puts ans